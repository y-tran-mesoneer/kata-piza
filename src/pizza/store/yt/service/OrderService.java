package pizza.store.yt.service;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

import javax.inject.Singleton;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import org.apache.commons.lang3.StringUtils;

import pizza.store.yt.ordering.Order;

@Singleton
@Path("{applicationName}/orders")
public class OrderService {

	private static List<Order> orders = new ArrayList<>();

	private enum OrderStatus {
		PENDING(0), CONFIRMED(1), DELIVERING(2), DONE(3), REJECT(99);
		private int value;

		OrderStatus(int value) {
			this.value = value;
		}

		public int value() {
			return this.value;
		}
	}

	public OrderService() {
	}

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Response getOrders(@QueryParam("role") String role) {
		Integer status;
		switch (role) {
		case "Receptionist":
			status = OrderStatus.PENDING.value();
			break;
		case "Chef":
			status = OrderStatus.CONFIRMED.value();
			break;
		case "Delivery":
			status = OrderStatus.DELIVERING.value();
			break;
		default: 
			return Response.status(Status.UNAUTHORIZED).build();
		}

		List<Order> filterOrders = orders.stream()
				.filter(p -> p.getStatus() == status)
				.collect(Collectors.toList());
		return Response.status(Status.OK).entity(filterOrders).build();
	}

	@PUT
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	public Response addOrder(Order order) {
		if (order == null
				|| !StringUtils.isNoneEmpty(order.getUserName(),
						order.getPhoneNumber(), order.getDeliverTo())
				|| order.getItems() == null || order.getItems().isEmpty()) {
			return Response.status(Status.BAD_REQUEST).build();
		}
		Order newOrder = new Order();
		newOrder.setId(UUID.randomUUID().toString());
		newOrder.setStatus(OrderStatus.PENDING.value());
		newOrder.setDeliverTo(order.getDeliverTo());
		newOrder.setPhoneNumber(order.getPhoneNumber());
		newOrder.setUserName(order.getUserName());
		newOrder.setCreateAt(Calendar.getInstance());
		newOrder.setItems(order.getItems());
		newOrder.setPrice(order
				.getItems()
				.stream()
				.filter(p -> p.getQuantity() != null
						&& p.getUnitPrice() != null)
				.mapToInt(
						p -> p.getQuantity().intValue()
								* p.getUnitPrice().intValue()).sum());

		orders.add(newOrder);
		return Response.status(Status.OK).entity(new OrderResponse(newOrder))
				.build();
	}

	@POST
	@Produces(MediaType.APPLICATION_JSON)
	@Consumes(MediaType.APPLICATION_JSON)
	public Response update(Order orderRequest) {

		if (orderRequest == null || StringUtils.isEmpty(orderRequest.getId())) {
			return Response.status(Status.BAD_REQUEST).build();
		}
		String orderId = orderRequest.getId();
		Integer status = orderRequest.getStatus();
		Order order = orders.stream().filter(p -> orderId.equals(p.getId()))
				.findFirst().orElse(null);
		if (order == null) {
			return Response.status(Status.NOT_FOUND).build();
		}
		order.setStatus(status);
		return Response.status(Status.OK).entity(new OrderResponse(order))
				.build();
	}

	public static class OrderResponse {
		public final String id;
		public final Calendar createdAt;

		private OrderResponse(Order order) {
			this.id = order.getId();
			this.createdAt = order.getCreateAt();
		}
	}

}

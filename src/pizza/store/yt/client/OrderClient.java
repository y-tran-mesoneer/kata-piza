package pizza.store.yt.client;

import java.util.List;

import javax.ws.rs.client.Entity;
import javax.ws.rs.core.Response;

import pizza.store.yt.ordering.Order;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.rest.client.GenericTypes;

public class OrderClient {
	public static List<Order> getOrders()
	{
		return Ivy.rest().client("orderService")
				.request().get(GenericTypes.listOf(Order.class));
	}
	
	public static Response addOrder(Order order) {
		return Ivy.rest().client("orderService")
				.request().put(Entity.json(order));
	}
	
	public static Response updateOrder(String id, Integer status) {
		Order order = new Order();
		order.setId(id);
		order.setStatus(status);
		
		return Ivy.rest().client("orderService")
				.request().post(Entity.json(order));
	}
}

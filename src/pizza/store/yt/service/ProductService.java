package pizza.store.yt.service;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

import javax.inject.Singleton;
import javax.ws.rs.BadRequestException;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import pizza.store.yt.ordering.Item;
import pizza.store.yt.ordering.Product;

@Singleton
@Path("{applicationName}/products")
public class ProductService {

	private enum ProductType {
		PIZZA(0), DRINK(1);
		private int value;

		ProductType(int value) {
			this.value = value;
		}

		public int value() {
			return this.value;
		}
	};

	public static List<Product> products = new ArrayList<>();

	public ProductService() {
		addNewProduct("Pizza trái cây", 199, ProductType.PIZZA);
		addNewProduct("Pizza rau củ", 120, ProductType.PIZZA);
		addNewProduct("Pizza thịt xông khói", 78, ProductType.PIZZA);
		addNewProduct("Pizza gà nấm", 65, ProductType.PIZZA);
		addNewProduct("Pizza heo quay", 215, ProductType.PIZZA);
		addNewProduct("Pizza thịt xông khói", 399, ProductType.PIZZA);
		addNewProduct("Pizza gà nấm", 999, ProductType.PIZZA);
		addNewProduct("Pizza heo quay", 475, ProductType.PIZZA);

		addNewProduct("Pepsi vị mắm tỏi", 13, ProductType.DRINK);
		addNewProduct("Pepsi vị hành", 15, ProductType.DRINK);
		addNewProduct("Pepsi vị tôm khô", 18, ProductType.DRINK);
		addNewProduct("Pepsi vị chanh sả", 29, ProductType.DRINK);
		addNewProduct("Pepsi vị cocacola", 45, ProductType.DRINK);
		addNewProduct("Pepsi vị nước suối", 99, ProductType.DRINK);
	}

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Response getProducts(@QueryParam("type") Integer type) {
		if (null == type) {
			return Response.status(Status.OK).entity(products).build();
		}
		List<Product> filterProducts = products.stream()
				.filter(p -> p.getType() == type).collect(Collectors.toList());
		return Response.status(Status.OK).entity(filterProducts).build();
	}

	private Product addNewProduct(String name, Integer price, ProductType type) {
		String imageUrl = type == ProductType.DRINK ? "https://cdn.tgdd.vn/Products/Images/2443/76467/bhx/nuoc-ngot-pepsi-cola-330ml-202008131510312950.JPG"
				: "https://cdn.pizzahut.vn/images/Web_V3/Products/Pizza_Rau_Cu_400x275.jpg";
		Product product = new Product();
		product.setId(UUID.randomUUID().toString());
		product.setImageUrl(imageUrl);
		product.setName(name);
		product.setPrice(price);
		product.setType(type.value());

		products.add(product);
		return product;
	}

	public static Item getItemByProductId(String id) {
		Item item = new Item();
		Product product = products.stream().filter(p -> p.getId().equals(id))
				.findFirst().orElseThrow(BadRequestException::new);
		item.setProductName(product.getName());
		item.setUnitPrice((Integer) product.getPrice());
		item.setProductId(product.getId());
		return item;
	}
	
}

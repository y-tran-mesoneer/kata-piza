package pizza.store.yt.client;

import java.util.List;

import pizza.store.yt.ordering.Product;
import ch.ivyteam.ivy.environment.Ivy;
import ch.ivyteam.ivy.rest.client.GenericTypes;

public class ProductClient {
	public static List<Product> getProducts()
	{
		return Ivy.rest().client("productService")
				.request().get(GenericTypes.listOf(Product.class));
	}
	
	public static List<Product> getProducts(Integer type)
	{
		return Ivy.rest().client("productService").queryParam("type", type)
				.request().get(GenericTypes.listOf(Product.class));
	}
}

package pizza.store.yt.beans;

import java.util.Map;
import java.util.Map.Entry;

import javax.el.ELContext;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.context.FacesContext;

import org.apache.commons.lang3.StringUtils;

import pizza.store.yt.UserOrdering.UserOrderingData;
import pizza.store.yt.ordering.Item;
import pizza.store.yt.ordering.Order;
import pizza.store.yt.service.ProductService;

@ManagedBean
@RequestScoped
public class UserOrderingBean {
	final Order order;

	public UserOrderingBean() {
		ELContext elContext = FacesContext.getCurrentInstance().getELContext();
		UserOrderingData userOrderingData = (UserOrderingData) elContext
				.getELResolver().getValue(elContext, null, "data");
		this.order = userOrderingData.getOrder();
	}

	@SuppressWarnings("unchecked")
	public void reloadOrderItems() {
		order.getItems().clear();
		order.getProducts().entrySet().forEach(e -> {
			Map.Entry<Object, Object> entry = (Entry<Object, Object>) e;
			try {
				if(entry.getValue() == null || StringUtils.isBlank(entry.getValue().toString())) {
					return;
				}
				Item item = ProductService.getItemByProductId(String.valueOf(entry.getKey()));
				item.setQuantity(Integer.valueOf(entry.getValue().toString()));
				order.getItems().add(item);
			} catch (Exception ex) {
				System.out.println("Product not found : " + entry.getKey());
				return;
			}
		});
		;
	}

	public boolean checkIdExistOnProducts(String id) {
		if (!order.getProducts().containsKey(id)) {
			return false;
		}
		Object value = order.getProducts().get(id);
		return value != null && StringUtils.isNotBlank(value.toString());
	}

}

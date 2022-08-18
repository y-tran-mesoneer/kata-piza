package pizza.store.yt;

/**
 */
@SuppressWarnings("all")
@javax.annotation.Generated(comments="This is the java file of the ivy data class Data", value={"ch.ivyteam.ivy.scripting.streamInOut.IvyScriptJavaClassBuilder"})
public class Data extends ch.ivyteam.ivy.scripting.objects.CompositeObject
{
  /** SerialVersionUID */
  private static final long serialVersionUID = 4683827330053188099L;

  private transient ch.ivyteam.ivy.scripting.objects.List<pizza.store.yt.ordering.Product> pizzas;

  /**
   * Gets the field pizzas.
   * @return the value of the field pizzas; may be null.
   */
  public ch.ivyteam.ivy.scripting.objects.List<pizza.store.yt.ordering.Product> getPizzas()
  {
    return pizzas;
  }

  /**
   * Sets the field pizzas.
   * @param _pizzas the new value of the field pizzas.
   */
  public void setPizzas(ch.ivyteam.ivy.scripting.objects.List<pizza.store.yt.ordering.Product> _pizzas)
  {
    pizzas = _pizzas;
  }

  private transient ch.ivyteam.ivy.scripting.objects.List<pizza.store.yt.ordering.Product> drinks;

  /**
   * Gets the field drinks.
   * @return the value of the field drinks; may be null.
   */
  public ch.ivyteam.ivy.scripting.objects.List<pizza.store.yt.ordering.Product> getDrinks()
  {
    return drinks;
  }

  /**
   * Sets the field drinks.
   * @param _drinks the new value of the field drinks.
   */
  public void setDrinks(ch.ivyteam.ivy.scripting.objects.List<pizza.store.yt.ordering.Product> _drinks)
  {
    drinks = _drinks;
  }

  private transient ch.ivyteam.ivy.scripting.objects.List<pizza.store.yt.ordering.Order> orders;

  /**
   * Gets the field orders.
   * @return the value of the field orders; may be null.
   */
  public ch.ivyteam.ivy.scripting.objects.List<pizza.store.yt.ordering.Order> getOrders()
  {
    return orders;
  }

  /**
   * Sets the field orders.
   * @param _orders the new value of the field orders.
   */
  public void setOrders(ch.ivyteam.ivy.scripting.objects.List<pizza.store.yt.ordering.Order> _orders)
  {
    orders = _orders;
  }

}

package pizza.store.yt.UserOrdering;

/**
 */
@SuppressWarnings("all")
@javax.annotation.Generated(comments="This is the java file of the ivy data class UserOrderingData", value={"ch.ivyteam.ivy.scripting.streamInOut.IvyScriptJavaClassBuilder"})
public class UserOrderingData extends ch.ivyteam.ivy.scripting.objects.CompositeObject
{
  /** SerialVersionUID */
  private static final long serialVersionUID = 1313465007415865037L;

  private ch.ivyteam.ivy.scripting.objects.List<pizza.store.yt.ordering.Product> pizzas;

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

  private ch.ivyteam.ivy.scripting.objects.List<pizza.store.yt.ordering.Product> drinks;

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

  private pizza.store.yt.ordering.Order order;

  /**
   * Gets the field order.
   * @return the value of the field order; may be null.
   */
  public pizza.store.yt.ordering.Order getOrder()
  {
    return order;
  }

  /**
   * Sets the field order.
   * @param _order the new value of the field order.
   */
  public void setOrder(pizza.store.yt.ordering.Order _order)
  {
    order = _order;
  }

  private javax.ws.rs.core.Response response;

  /**
   * Gets the field response.
   * @return the value of the field response; may be null.
   */
  public javax.ws.rs.core.Response getResponse()
  {
    return response;
  }

  /**
   * Sets the field response.
   * @param _response the new value of the field response.
   */
  public void setResponse(javax.ws.rs.core.Response _response)
  {
    response = _response;
  }

  private java.lang.Boolean validData;

  /**
   * Gets the field validData.
   * @return the value of the field validData; may be null.
   */
  public java.lang.Boolean getValidData()
  {
    return validData;
  }

  /**
   * Sets the field validData.
   * @param _validData the new value of the field validData.
   */
  public void setValidData(java.lang.Boolean _validData)
  {
    validData = _validData;
  }

}

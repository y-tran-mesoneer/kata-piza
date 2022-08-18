package pizza.store.yt.OrderManipulation;

/**
 */
@SuppressWarnings("all")
@javax.annotation.Generated(comments="This is the java file of the ivy data class OrderManipulationData", value={"ch.ivyteam.ivy.scripting.streamInOut.IvyScriptJavaClassBuilder"})
public class OrderManipulationData extends ch.ivyteam.ivy.scripting.objects.CompositeObject
{
  /** SerialVersionUID */
  private static final long serialVersionUID = -4987573216362126972L;

  private java.util.List<pizza.store.yt.ordering.Order> orders;

  /**
   * Gets the field orders.
   * @return the value of the field orders; may be null.
   */
  public java.util.List<pizza.store.yt.ordering.Order> getOrders()
  {
    return orders;
  }

  /**
   * Sets the field orders.
   * @param _orders the new value of the field orders.
   */
  public void setOrders(java.util.List<pizza.store.yt.ordering.Order> _orders)
  {
    orders = _orders;
  }

  private ch.ivyteam.ivy.security.IUser user;

  /**
   * Gets the field user.
   * @return the value of the field user; may be null.
   */
  public ch.ivyteam.ivy.security.IUser getUser()
  {
    return user;
  }

  /**
   * Sets the field user.
   * @param _user the new value of the field user.
   */
  public void setUser(ch.ivyteam.ivy.security.IUser _user)
  {
    user = _user;
  }

}

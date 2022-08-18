package pizza.store.yt.ordering;

/**
 */
@SuppressWarnings("all")
@javax.annotation.Generated(comments="This is the java file of the ivy data class Order", value={"ch.ivyteam.ivy.scripting.streamInOut.IvyScriptJavaClassBuilder"})
public class Order extends ch.ivyteam.ivy.scripting.objects.CompositeObject
{
  /** SerialVersionUID */
  private static final long serialVersionUID = -5260755492745683634L;

  private transient java.lang.String userName;

  /**
   * Gets the field userName.
   * @return the value of the field userName; may be null.
   */
  public java.lang.String getUserName()
  {
    return userName;
  }

  /**
   * Sets the field userName.
   * @param _userName the new value of the field userName.
   */
  public void setUserName(java.lang.String _userName)
  {
    userName = _userName;
  }

  private transient java.lang.String phoneNumber;

  /**
   * Gets the field phoneNumber.
   * @return the value of the field phoneNumber; may be null.
   */
  public java.lang.String getPhoneNumber()
  {
    return phoneNumber;
  }

  /**
   * Sets the field phoneNumber.
   * @param _phoneNumber the new value of the field phoneNumber.
   */
  public void setPhoneNumber(java.lang.String _phoneNumber)
  {
    phoneNumber = _phoneNumber;
  }

  private transient java.lang.String deliverTo;

  /**
   * Gets the field deliverTo.
   * @return the value of the field deliverTo; may be null.
   */
  public java.lang.String getDeliverTo()
  {
    return deliverTo;
  }

  /**
   * Sets the field deliverTo.
   * @param _deliverTo the new value of the field deliverTo.
   */
  public void setDeliverTo(java.lang.String _deliverTo)
  {
    deliverTo = _deliverTo;
  }

  private transient java.util.HashMap products;

  /**
   * Gets the field products.
   * @return the value of the field products; may be null.
   */
  public java.util.HashMap getProducts()
  {
    return products;
  }

  /**
   * Sets the field products.
   * @param _products the new value of the field products.
   */
  public void setProducts(java.util.HashMap _products)
  {
    products = _products;
  }

  private transient java.util.List<pizza.store.yt.ordering.Item> items;

  /**
   * Gets the field items.
   * @return the value of the field items; may be null.
   */
  public java.util.List<pizza.store.yt.ordering.Item> getItems()
  {
    return items;
  }

  /**
   * Sets the field items.
   * @param _items the new value of the field items.
   */
  public void setItems(java.util.List<pizza.store.yt.ordering.Item> _items)
  {
    items = _items;
  }

  /**
   * 0/1/2/3/99 --- PENDING/CONFIRMED/DELIVERING/DONE/REJECT
   */
  private transient java.lang.Integer status;

  /**
   * Gets the field status.
   * @return the value of the field status; may be null.
   */
  public java.lang.Integer getStatus()
  {
    return status;
  }

  /**
   * Sets the field status.
   * @param _status the new value of the field status.
   */
  public void setStatus(java.lang.Integer _status)
  {
    status = _status;
  }

  private transient java.lang.String id;

  /**
   * Gets the field id.
   * @return the value of the field id; may be null.
   */
  public java.lang.String getId()
  {
    return id;
  }

  /**
   * Sets the field id.
   * @param _id the new value of the field id.
   */
  public void setId(java.lang.String _id)
  {
    id = _id;
  }

  private transient java.util.Calendar createAt;

  /**
   * Gets the field createAt.
   * @return the value of the field createAt; may be null.
   */
  public java.util.Calendar getCreateAt()
  {
    return createAt;
  }

  /**
   * Sets the field createAt.
   * @param _createAt the new value of the field createAt.
   */
  public void setCreateAt(java.util.Calendar _createAt)
  {
    createAt = _createAt;
  }

  private transient java.lang.Number price;

  /**
   * Gets the field price.
   * @return the value of the field price; may be null.
   */
  public java.lang.Number getPrice()
  {
    return price;
  }

  /**
   * Sets the field price.
   * @param _price the new value of the field price.
   */
  public void setPrice(java.lang.Number _price)
  {
    price = _price;
  }

}

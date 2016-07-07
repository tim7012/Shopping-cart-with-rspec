class CartItem

  attr_reader :product_id, :quantity

  def initialize(product_id, quantity = 1)
    @product_id = product_id
    @quantity = quantity
  end

  def increment
  @quantity += 1
  end
end



class Cart

  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(product_id)
    #找: item = 找item
    item = @items.find{|x| x.product_id == product_id}
    #if 有一樣的
    if item
      item.increment
    else
      @items << CartItem.new(product_id)
    end
    #  item.quantity+=1
    #else
    #  @items < new item

  end

  def empty?
    @items.empty?
  end
end
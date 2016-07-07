



class Cart

  attr_reader :items

  def initialize
    @items = []
  end

  def add_item(product_id)
    #找: item = 找item
    item = items.find{|x| x.product_id == product_id}
    #if 有一樣的
    if item
      item.increment
    else
      items << CartItem.new(product_id)
    end
    #  item.quantity+=1
    #else
    #  @items < new item

  end

  #items -> call a function return @items
  def empty?
    items.empty?
  end
end
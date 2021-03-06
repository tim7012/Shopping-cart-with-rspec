require 'rails_helper'

#rails g rspec:model Cart


#rspec spec/models 只測試models
#rspec spec/models/cart_spec.rb:16
RSpec.describe Cart, type: :model do
  describe "購物車相關功能" do
    it "可以加到購物車" do
      cart = Cart.new
      expect(cart.empty?).to be true

      cart.add_item(1)
      expect(cart.empty?).to be false
    end

    it "加一樣的商品不會增加item數" do
      cart = Cart.new
      5.times do
        cart.add_item(1)
      end
      2.times do
        cart.add_item(3)
      end
      8.times do
        cart.add_item(2)
      end

      expect(cart.items.count).to be 3
      expect(cart.items.first.quantity).to be 5
      expect(cart.items.last.quantity).to be 8
    end

    it "可取出正確商品" do
      cart = Cart.new
      p1 = Product.create
      p2 = Product.create
      cart.add_item(p1.id)
      cart.add_item(p2.id)
      expect(cart.items.first.product).to be_a Product
      expect(cart.items.last.product).to be_a Product
    end

  end
end

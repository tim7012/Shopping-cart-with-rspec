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


  end
end

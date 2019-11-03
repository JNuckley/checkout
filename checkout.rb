class Checkout
attr_accessor :items

def initialize
  @items = [
    {product:'Banana', cost: '£0.75'},
    {product: 'Bread', cost: '£1.10'}
  ]
end

def find_item(product)
  @items.find{|item| item[:product] == product }
end

end

# As a shopper
# So I know how much an item costs
# I would like to be able to see its price

# As a shopper
# So that I can buy an item
# I would like to be able to scan items at the checkout

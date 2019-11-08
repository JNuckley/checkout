class Checkout
  attr_accessor :items, :scanned

  #  have the items available for reference
  def initialize
    @items = [
      {product: 'Banana', cost: 0.75},
      {product: 'Bread', cost: 1.10},
      {product: 'Fudge', cost: 1.00}
    ]
    @scanned = []
    @bill = []

  end
  #  find an item by product name
  def find_item(product)
    @items.find{|item| item[:product] == product }
  end

  def scan(product)
    @scanned << @items.find{|item| item[:product] == product}

  end

  def bill
    @bill = (@scanned.map {|cost| cost[:cost]})
  end

  def total_cost
    bill.sum
    #.collect do |total|
      # total.to_float
      # total.sum
end
end

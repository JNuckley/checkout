require './checkout'

describe Checkout do
  it 'creates an instance of Checkout' do
    checkout = Checkout.new
  end
  it 'can find items' do
    checkout = Checkout.new
    item = checkout.find_item('Banana')
    expect(item).to eq(product:'Banana', cost: '£0.75')

  end
end

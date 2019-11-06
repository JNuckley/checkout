require './Lib/checkout'

describe Checkout do
  subject(:checkout) {Checkout.new}

  it { is_expected.to be_an_instance_of(Checkout) }

  it 'can find items' do
    item = checkout.find_item('Banana')
    expect(item).to eq(product:'Banana', cost: '£0.75')
  end
  it 'can scan an item and return the price' do
    item = checkout.scan('Banana')
    expect(item).to eq(cost: '£0.75')
  end
end

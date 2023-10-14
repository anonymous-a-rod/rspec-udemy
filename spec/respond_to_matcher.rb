class HotChocolate
  def drink
    'yum'
  end

  def dsicard
    'into the trash you go'
  end

  def purchase(number)
    "I purchased #{number} cup"
  end
end

class Coffee
  def drink; end
  def dsicard; end
  def purchase(number); end
end


RSpec.describe HotChocolate do
  it 'confirms that an obj can respond to a method' do
    expect(subject).to respond_to(:drink, :discard, :purchase)
  end

  it 'cofirms it can respond to a method with arguments' do
    expect(subject).to respond_to(:purchase).with(1).arguments
  end
end
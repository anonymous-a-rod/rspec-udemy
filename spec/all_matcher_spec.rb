RSpec.describe 'all matcher' do
  it 'allows for aggregate checks' do
    numbers = [5, 7, 9]

    expect(numbers).to all(be_odd)
    expect(numbers).to all(be <= 10)

    # a.each do |number|
    #   expect(number).to be_odd
    # end
  end
end
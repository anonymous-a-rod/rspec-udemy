# predicate methods
puts 0.zero?
[].empty?

RSpec.describe 'predicate matchers' do

  it '' do
    result = 16 / 2
    expect(result.even?).to eq(true)
    expect(result).to be_even
    expect([]).to be_empty
    expect([1]).to be_any
    expect(1).to be_odd
    expect(0).to be_zero
  end

  describe 0 do
    it { is_expected.to be_zero }
  end
end
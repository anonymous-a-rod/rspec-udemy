# if [1, 2, 3]
  
# end

# falsy values = false and nil
# truthy values, everything else

RSpec.describe 'be matchers' do
  it 'can test for truthines' do
    expect(true).to be_truthy
    expect(' ').to be_truthy
    expect([1, 2]).to be_truthy
    expect(:etc).to be_truthy
    expect('everything besides false and nil').to be_truthy
  end

  it 'can test for falsiness' do
    expect(false).to be_falsey
    expect(nil).to be_falsey
  end

  it 'can test for nil' do
    expect(nil).to be_nil

    my_hash = { a: 4 }
    expect(my_hash[:b]).to be_nil
  end
end

RSpec.describe [10, 20, 30] do
  it { is_expected.to all(be_even) }
end

RSpec.describe [0, 1, 2] do
  it { is_expected.to all(be >= 0) }
end
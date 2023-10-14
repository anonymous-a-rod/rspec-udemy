RSpec.describe 'not_to_method' do
  it 'checks for the inverse of a matcher' do
    expect(5).not_to eq 6
    expect(5.0).not_to eql 5
    expect([1, 2]).not_to be [1, 2]
    expect(10).not_to be_odd
    expect(11).not_to be_even
    expect(1).not_to be_zero
    expect(nil).not_to be_truthy
    expect('Aaron').not_to start_with 'z'
    expect(5).not_to respond_to(:length)

    expect { 11 / 3 }.not_to raise_error
  end
end
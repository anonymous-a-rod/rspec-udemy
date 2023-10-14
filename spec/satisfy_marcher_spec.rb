RSpec.describe 'satisfy matcher' do
  subject { 'racecar' }

  it 'is a palindrome' do
    expect(subject).to satisfy { |value| value == value.reverse }
  end

  it 'it accepts a custom error message' do
    expect('carcas').to satisfy('to be a palindrome') do |value|
      value == value.reverse
    end
  end
end
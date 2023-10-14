RSpec.describe 'before and after hooks' do

  # runs before each context / describe
  before(:context) do
    puts 'Before context'
  end

  after(:context) do
    puts 'After context'
  end
# runs before each example
  # before do

  # end

  before(:example) do
    puts 'Before example'
  end

  # runs after each example
  # after do

  # end

  after(:example) do
    puts 'After example'
  end

  it 'example one' do
    expect(1+1).to eq 2
  end

  it 'example two' do
    expect(1+1).to eq 2
  end

end
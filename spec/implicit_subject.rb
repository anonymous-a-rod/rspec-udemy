RSpec.describe Hash do
  # let(:subject) { Hash.new }
  # rspec implicity makes an instnatiation of the argument the subject

  it 'is an empty hash' do
    puts subject
    puts subject.class
    expect(subject.length).to eq 0
  end
end
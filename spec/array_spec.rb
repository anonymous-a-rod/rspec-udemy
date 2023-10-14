RSpec.describe Array do

  it 'is has a length of 0' do
    expect(subject.length).to eq(0)
    subject.push(1)
    expect(subject.length).to eq(1)
  end
end
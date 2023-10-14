RSpec.describe Array do
  subject(:bob_dole) { [1, 2, 3] }

  it 'is an array of length 3' do
    expect(subject.length).to eq 3
    expect(bob_dole.length).to eq 3
    bob_dole.pop
    expect(subject.length).to eq 2
  end

  it 'instantiates a new subject' do
    expect(subject).to eq [1, 2, 3]
  end
end
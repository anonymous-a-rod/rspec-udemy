RSpec.describe 'container exactly matcher' do
  subject { [1, 2, 3] }

  context 'long form syntax' do
    it 'should check for presence of all elements' do
      expect(subject).to contain_exactly(1, 2, 3)
    end
  end

  it { is_expected.to contain_exactly(3, 1, 2) }
end
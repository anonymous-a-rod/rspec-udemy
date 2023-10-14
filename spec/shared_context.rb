RSpec.shared_context 'common' do
  before do
    @foods = 0
  end

  def some_helper_method
    5
  end

  let(:some_variable) { [1, 2, 3] }
end

RSpec.describe 'first example group' do
  include_context 'common'

  it 'can use outside instance vars' do
    expect(@foods).to eq 0
    @foods += 1
    expect(@foods).to eq 1
  end

  it 'can re-use the instance var' do
    expect(@foods).to eq 0
  end
end

RSpec.describe 'second example' do
  include_context 'common'

  it 'can use shared let variables' do
    expect(some_variable).to eq [1, 2, 3]
  end
end

RSpec.describe 'Assignment 7' do
  subject { [1, 2] }

  it 'is the array [1, 2]' do
    expect(subject).to eq [1, 2]
  end

  it { is_expected.to eq [1, 2] }
end
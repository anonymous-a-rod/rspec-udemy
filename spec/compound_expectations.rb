RSpec.describe 25 do
  it 'can test for multiple matchers' do
    # expect(subject).to be_odd
    # expect(subject).to be > 20

    expect(subject).to be_odd.and be > 20
  end
end

RSpec.describe 'Chinese farmer' do
  it { is_expected.to start_with('Chinese').and end_with('farmer') }
end

RSpec.describe [:usa, :canada, :china] do
  it { expect(subject.sample).to eq(:usa).or eq(:canada).or eq(:china) }
end

RSpec.describe 'comparison matchers' do
  it 'allows for comparison with build-in Ruby operators' do
    expect(10).to be > 5
    expect(10).to be >= 5

    expect(10).to be < 15
    expect(10).to be <= 15

    expect(10).to be == 10
    expect(10).not_to be == 11
  end

  describe 100 do
    it { is_expected.to be > 50 }
    it { is_expected.to be >= 50 }

    it { is_expected.to be < 150 }
    it { is_expected.to be <= 150 }

    it { is_expected.to be == 100 }
  end
end
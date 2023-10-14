RSpec.describe 'Assignment 9' do
  describe 'firetruck' do
    it "starts with 'fire' and ends with 'truck'" do
      expect(subject).to start_with('fire').and end_with('truck')
    end
  end

  describe 20 do
    it "is even and responds to 'times' method" do
      expect(subject).to be_even.and respond_to(:*)
    end
  end

  describe [4, 8, 15, 16, 23, 42] do
    it "is even and responds to 'times' method" do
      expect(subject).to start_with(4, 8, 15).and include(42)
    end
  end
end
RSpec.describe 'start_with and end_with matchers' do

  describe [1, 2, 3, 4] do
    it 'starts with 1' do
      expect(subject).to start_with(1)
    end

    it 'ends with 4' do
      expect(subject).to end_with(4)
    end

    it 'ends with 3, 4' do
      expect(subject).to end_with(3, 4)
    end
  end

  describe 'Bobdole' do
    it 'starts with B' do
      expect(subject).to start_with('B')
    end

    it 'ends with e' do
      expect(subject).to end_with('e')
    end

    it 'ends with dole' do
      expect(subject).to end_with('dole')
    end
  end


end
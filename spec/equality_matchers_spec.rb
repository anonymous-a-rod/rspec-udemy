RSpec.describe 'equality matchers' do
  # float
  let(:a) { 3.0 }
  # int
  let(:b) { 3 }

  describe 'eq matcher' do
    it 'tests for value and ignores type' do
      expect(a).to eq b
    end
  end

  describe 'eql matcher' do
    it 'tests for value and type' do
      expect(a).not_to eql b
    end
  end

  describe 'equal matcher && be matcher' do
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }

    it 'tests for equal object indentity' do
      expect(c).not_to equal d
      expect(c).to equal e
    end
  end

end
RSpec.describe 'include matcher' do
  describe 'hot chocolate' do
    it 'checks for substring inclusion' do
      is_expected.to include 'co'
      is_expected.to include 'hot'
    end
  end

  describe [1, 2, 3, 4, 5] do
    it 'checks for elements inclusion in the array' do
      is_expected.to include 1
      is_expected.to include 1, 5, 2
    end

    it 'checks for elements exclusion in the array' do
      is_expected.not_to include false
    end
  end

  describe ({a: 2, b: 4}) do
    it 'checks for inclusion in the Hash' do
      is_expected.to include :a
      is_expected.to include b: 4
    end

    it 'checks for elements exclusion in the Hash' do
      is_expected.not_to include :c
    end
  end
end
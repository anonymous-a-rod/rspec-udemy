class ProfessionaWrestler
  attr_reader :name, :finishing_move

  def initialize(name, finishing_move)
    @name = name
    @finishing_move = finishing_move
  end

end

RSpec.describe 'have_attributes matcher' do
  describe ProfessionaWrestler.new('Long John', 'Stunner') do
    it 'checks for object attributes and proper value' do
      expect(subject).to have_attributes(name: 'Long John')
    end
  end
end
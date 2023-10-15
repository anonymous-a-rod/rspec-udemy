RSpec.describe 'Movie' do
  let(:stuntman) do
    double("Mr. Danger",
           ready?: true,
           act: "any string",
           fall_off_ladder: 'sure!!',
           light_on_fire: true)
  end

  subject { Movie.new(stuntman) }

  describe '#start_shooting' do
    it 'expects an actor to do 4 actions' do
      expect(stuntman).to receive(:ready?).exactly(1).times
      expect(stuntman).to receive(:act).at_most(1).times
      expect(stuntman).to receive(:fall_off_ladder).once
      expect(stuntman).to receive(:light_on_fire).at_least(1).times

      subject.start_shooting
    end
  end
end


class Actor
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    "I love you, baby"
  end

  def fall_off_ladder
    'call my agent! no way'
  end

  def light_on_fire
    false
  end

end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      actor.act
      actor.fall_off_ladder
      actor.light_on_fire
    end
  end
end

# actor = Actor.new('Brad Pitt')
# movie = Movie.new(actor)
# movie.start_shooting




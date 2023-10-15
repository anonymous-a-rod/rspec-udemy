class CardGame
  attr_reader :cards

  def start
    @cards = Deck.build
  end
end

class Deck
  def self.build
    # Bussiness logic to build out a whole bunch of cards
  end
end

RSpec.describe CardGame do
  it 'can only implment class methods that are defined on a class' do
    deck_klass = class_double(Deck, build: ['Ace', 'Queen']).as_stubbed_const

    expect(deck_klass).to receive(:build)
    subject.start
    expect(subject.cards).to eq(['Ace', 'Queen'])
  end
end
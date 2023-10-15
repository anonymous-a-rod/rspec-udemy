RSpec.describe 'spies' do
  let(:animal) { spy('animal') }

  it 'confirms that a message has been received' do
    animal.eat_food
    expect(animal).to have_received(:eat_food)
    expect(animal).not_to have_received(:eat_human)
  end

  it 'confirms that a message has not been received' do
    expect(animal).not_to have_received(:eat_food)
  end

  it 'retais the same functionality as a double' do
    animal.eat_food
    animal.eat_food('Sushi')
    animal.eat_food
    expect(animal).to have_received(:eat_food).exactly(3).times
    expect(animal).to have_received(:eat_food).at_least(2).times
    expect(animal).to have_received(:eat_food).at_most(3).times
    expect(animal).to have_received(:eat_food).once.with('Sushi')
  end
end
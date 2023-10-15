class Person
  def a
    sleep(3)
    "Hello"
  end

  def greet
    'hi'
  end
end


RSpec.describe Person do
  describe 'regular double' do
    it 'can implement any method' do
      person = double(a: "Hello", b: 20)
      expect(person.a).to eq "Hello"
    end
  end

  describe 'instance_double' do
    it 'can only implement methods that are defined on the class' do
      # person = instance_double(Person, a: 'Hello')
      # expect(person.a).to eq 'Hello'

      person = instance_double(Person)
      allow(person).to receive(:a).and_return('Hello')

      expect(person.a).to eq 'Hello'
    end
  end
end


RSpec.describe Person do
  describe 'instance_double' do
    let(:person) { instance_double Person }

    before do
      allow(person).to receive(:greet).and_return('Hello')
    end

    it 'can only implement methods that are defined on the class' do
      expect(person.greet).to eq 'Hello'
    end
  end
end

RSpec.describe Person do
  describe 'instance_double' do
    let(:person) { instance_double Person, greet: 'Hello' }

    it 'can only implement methods that are defined on the class' do
      expect(person.greet).to eq 'Hello'
    end

    it 'invoke greet again' do
      expect(person.greet).to eq 'Hello'
    end
  end
end
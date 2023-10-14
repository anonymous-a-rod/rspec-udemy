class King
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

RSpec.describe King do
  subject { described_class.new('Aaron') }

  it 'has a king named Aaron' do
    expect(subject.name).to eq 'Aaron'
  end
end
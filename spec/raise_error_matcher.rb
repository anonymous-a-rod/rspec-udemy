RSpec.describe 'raise_error matcher' do

  def some_method
    x
  end

  def add_one(x)
    x + 1
  end

  class CustomError < StandardError; end

  it 'can check for any error' do
    expect { add_one }.to raise_error(ArgumentError)
    expect { some_method }.to raise_error(NameError)
    expect { 10/0 }.to raise_error(ZeroDivisionError)
    expect { raise CustomError }.to raise_error(CustomError)
  end
end
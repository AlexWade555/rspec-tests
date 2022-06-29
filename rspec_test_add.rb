require 'rspec/autorun'

class Calculator
  def add(a, b)
    a + b
  end
end

describe Calculator do
  let(:calculator) { Calculator.new }

  it 'adds two numbers' do
    expect(calculator.add(2,3)).to eq(5)
  end

  it 'adds 2 & 2' do
    expect(calculator.add(2,2)).to eq(4)
  end
end

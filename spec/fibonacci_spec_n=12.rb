require 'rspec'
require_relative '../routes/fibonacci'

RSpec.describe Fibonacci do
  it 'calculates fib(12)' do
    fib = Fibonacci.new
    expect(fib.fib(12)).to eq(144)
  end
end

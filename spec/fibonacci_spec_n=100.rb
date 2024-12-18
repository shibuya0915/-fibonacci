require 'rspec'
require_relative '../routes/fibonacci'

RSpec.describe Fibonacci do
  it 'calculates fib(100)' do
    fib = Fibonacci.new
    expect(fib.fib(100)).to eq(354224848179261915075)
  end
end

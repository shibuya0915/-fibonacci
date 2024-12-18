require 'rspec'
require_relative '../routes/fibonacci'

RSpec.describe Fibonacci do
  it 'status 413' do
    fib = Fibonacci.new
    expect { fib.fib(8696) }.to
  end
end

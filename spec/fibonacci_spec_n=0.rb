require 'rspec'
require_relative '../routes/fibonacci'

RSpec.describe Fibonacci do
  it 'status 400' do
    fib = Fibonacci.new
    expect { fib.fib(0) }.to
  end
end

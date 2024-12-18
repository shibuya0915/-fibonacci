require 'sinatra'
require 'json'
require_relative 'routes/fibonacci'

set :views, '/Users/shibuya/Documents/就活/speee/routes'

post '/submit' do
  content_type :json
  num = params[:num].to_i

  if num > 8695
    status 413
    { error: "数が大きすぎます。8695以下を入力してください" }.to_json
  elsif num > 1
    fibonacci = Fibonacci.new
    result = fibonacci.fib(num)
  { result: result}.to_json
  else
    status 400
    { error: "1以上を入力してください" }.to_json
  end
end

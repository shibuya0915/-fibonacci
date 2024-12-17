require 'sinatra'
require_relative 'routes/fibonacci'


set :views, '/Users/shibuya/Documents/就活/speee/routes'

get '/fibonacci' do
  erb :pages
end

post '/submit' do
  num = params[:num]
  if num.to_i > 8695
    status 413
    return "エラー : 数が大きすぎます。8695以下を入力してください"
  elsif num.to_i > 1
    fibonacci = Fibonacci.new
    @result = fibonacci.fib(num)
    erb :result
  else
    status 400
    return "エラー : 1以上を入力してください"
  end
end



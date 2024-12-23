require 'sinatra'
require 'json'
require 'sinatra/json' 
require_relative 'routes/fibonacci'

set :views, 'views'

get '/' do
  erb :pages
end

def fibo (num)
  content_type :json
  num = params[:num]

  begin
    num = Integer(num)
  rescue ArgumentError
    status 400
    return { error: "数値を入力してください" }.to_json
  end

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

get '/fib' do
  content_type :json
  fibo(params[:num])
end

post '/fib' do
  content_type :json
  fibo(params[:num])
end
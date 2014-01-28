require 'sinatra'

enable :sessions

get '/' do
  @grandma = params[:grandma]
  erb :index
end

get '/response' do
  @input = session[:user_input]
end

post '/grandma' do
  @input = params[:user_input]
  if @input == @input.upcase
    @response1 = "Hey Sonny, it's great to see your face in the retirement home."
  else
    @response1 = "Speak up Sonny!!!"
  end
  #session[:user_input] = params[:user_input]
  erb :response
end

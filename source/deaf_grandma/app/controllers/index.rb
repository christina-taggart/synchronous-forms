require 'sinatra'

get '/' do
  erb :index
end

post '/grandma' do
  grandma = params[:user_input]
  @grandma = grandma == grandma.upcase ? "NO, NOT SINCE 1925" : "SPEAK UP SONNY!"
  erb :index
end

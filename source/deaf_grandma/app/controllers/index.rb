require 'sinatra'

enable :sessions

get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  "Implement the /grandma route yourself.<br>Params: <code>#{params.inspect}</code>"
  input = params[:user_input]
  if input == input.upcase
    response = "Hey Sonny, it's great to see your face in the retirement home."
  else
    response = "Speak up Sonny!!!"
  end
  redirect "/?grandma=#{response}"
end

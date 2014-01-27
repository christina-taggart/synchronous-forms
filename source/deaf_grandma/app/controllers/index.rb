get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  @message = params[:user_input]
  erb :index
  #"Implement the /grandma route yourself.<br>Params: <code>#{params.inspect}</code>"
  #redirect to('/bar')
end

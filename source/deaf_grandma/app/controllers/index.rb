get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  response = Grandma.choose_response(params[:user_input])
  redirect "/?grandma=#{response}"
end

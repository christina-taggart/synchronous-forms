get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  if params[:user_input].upcase == params[:user_input]
  	@grandma = "TOO DAMN LOUD!"
  else
  	@grandma = "Whaat?"
  end
  erb :index
end

get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

put '/grandma' do
  if params[:user_input].upcase == params[:user_input]
    @grandma = "Hey sonny"
  else
    @grandma = "Speak up!"
  end
  erb :index
end

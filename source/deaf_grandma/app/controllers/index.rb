get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  input = params[:user_input]
  if input == input.upcase
    @grandma = "I agree, JFK was quite handsome."
  else
    @grandma = "SPEAK UP HOMIE"
  end
  erb :index
end
get '/' do
  @grandma = params[:grandma]
  erb :index
end

post '/grandma' do
  @input = params[:user_input]

  @grandma_says = @input == @input.upcase ? "Hey Sonny, it's great to see your face in the retirement home." : "Speak up Sonny!!!"

  erb :response
end

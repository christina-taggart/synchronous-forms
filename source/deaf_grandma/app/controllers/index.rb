get '/' do
  p @grandma = params[:grandma]
  if @grandma == @grandma.upcase
    @grandma = "NO, NOT SINCE 1925"
  else
    @grandma = "SPEAK UP SONNY!"
  end
  erb :index
end

post '/grandma' do
  grandma = params[:user_input]
  redirect to("/?grandma=#{grandma}")
end

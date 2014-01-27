get '/' do
  @grandma = params[:grandma]
  if @grandma
  	@grandma.eql?(@grandma.upcase) ? @grandma = "not since 1984!" : @grandma = "SPEAK UP KIDDO!"
  end
  erb :index
end

post '/grandma' do
  redirect to("/?grandma=#{params["user_input"]}")
end

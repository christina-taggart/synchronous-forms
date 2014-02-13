get '/' do
  @grandma = params[:grandma]
  erb :index
end

post '/grandma' do
  @grandma = GrandmaSpeaker.new(params[:user_input]).speak!
  erb :index
end

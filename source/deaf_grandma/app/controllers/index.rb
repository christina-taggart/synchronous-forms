get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  @grandma = GrandmaSpeaker.new(params[:user_input]).speak!
  erb :index
end

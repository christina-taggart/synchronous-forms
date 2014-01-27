get '/' do
	@grandma = params[:grandma]
	# Look in app/views/index.erb
	erb :index
end

post '/grandma' do
	input = params[:user_input]
	if input == input.upcase
		redirect to ('/?grandma=NO, NOT SINCE 1945!')
	else
		redirect to ('/?grandma=HUH? SPEAK UP SONNY')
	end
end


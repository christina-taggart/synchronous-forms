get '/' do
  @grandma = params[:grandma]
  # Look in app/views/index.erb
  erb :index
end

post '/grandma' do
  grandmaisms = ["When did we start letting the Catholics in?",
    "Careful, those gypsies will curse you!", "Damn Canadians and their beady eyes!",
    "You know what they say about Aleutians...", "No daughter of mine is gonna marry a San Marinan haberdasher!"]
  response = params[:user_input].upcase == params[:user_input] ? grandmaisms.sample : "Speak up, sonny!"
  redirect "/?grandma=#{response}"
end

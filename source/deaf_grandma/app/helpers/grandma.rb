class Grandma

  def self.random_response
    grandmaisms = ["When did we start letting the Catholics in?",
                   "Careful, those gypsies will curse you!", 
                   "Damn Canadians and their beady eyes!",
                   "You know what they say about Aleutians...", 
                   "No daughter of mine is gonna marry a San Marinan haberdasher!"]
    grandmaisms.sample
  end

  def self.speak_up
    "Speak up, sonny!"
  end

  def self.choose_response(question)
    question == question.upcase ? self.random_response : self.speak_up
  end
end
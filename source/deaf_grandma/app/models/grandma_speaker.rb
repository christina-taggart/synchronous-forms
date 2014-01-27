class GrandmaSpeaker
  def initialize(input)
    @input = input
  end

  def speak!
    all_caps? ? "No thanks, I've already had some today!" : "Speak up, kiddo!"
  end

  private

  def all_caps?
    @input.upcase == @input
  end
end


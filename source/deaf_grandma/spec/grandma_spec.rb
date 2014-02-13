require 'spec_helper'

describe GrandmaSpeaker do
  subject { GrandmaSpeaker.new("hello") }

  it { should respond_to :speak! }
  it { should_not respond_to :all_caps? }

  it "should exist" do
    expect(subject).to be
  end

  it "should correctly respond to lower case response" do
    expect(subject.speak!).to eq "Speak up, kiddo!"
    caps = GrandmaSpeaker.new("HELLO")
    expect(caps.speak!).to eq "No thanks, I've already had some today!"
  end

end
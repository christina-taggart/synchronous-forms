require 'spec_helper'

describe "index controller" do
  it "should get the index" do
    get "/"
    expect(last_response).to be_ok
  end
end

describe "grandma's controller" do
  it "should redirect with 'Speak up, Sonny!' if user input is lower case" do
    user_input = "hello"
    params = { user_input: user_input }
    post("/grandma", params)
    expect(last_response.location.include?("Speak up, sonny!"))
  end

  it "should redirect with random phrase if user input is upper case" do
    user_input = "HELLO"
    params = { user_input: user_input }
    post("/grandma", params)
    expect(last_response.location.include?("Speak up, sonny!")).to eq false
  end
end
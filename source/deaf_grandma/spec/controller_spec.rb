require 'spec_helper'

include Rack::Test::Methods

describe "Controller" do

  describe "get index page" do
    it "should load the index page" do
      get '/'
      expect(last_response).to be_ok
    end
  end

  describe "get a response" do
    params = {user_input: "hello"}

    it "should go to the post route" do
      post '/grandma', params, session={}
      expect(last_response).to be_ok
    end

    it "responds to user input" do
      post '/grandma', params, session={}
      expect(last_response.body).to be
    end

  end

end
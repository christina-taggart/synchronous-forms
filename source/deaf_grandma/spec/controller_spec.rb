require "spec_helper"

describe "homepage" do
  it "should be ok" do
    get "/"
    expect(last_response.status).to eq 200
  end
end

describe "post /grandma" do
  let(:lower_case) { {user_input: "hello"} }
  let(:upper_case) { {user_input: "HELLO"} }

  it "should be ok" do
    post "/grandma", lower_case
    expect(last_response.status).to eq 200
  end

  it "should respond with speak up to lower case" do
    post '/grandma', lower_case
    expect(/Speak up, kiddo!/.match(last_response.body)).to be
  end

  it "should respond with a different answer to upper_case" do
    post '/grandma', upper_case
    expect(/Speak up, kiddo!/.match(last_response.body)).to be_nil
  end

end
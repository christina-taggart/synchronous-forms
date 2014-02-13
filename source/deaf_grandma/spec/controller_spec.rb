require 'spec_helper'

describe "Index controller" do
  it "should get the index" do
    get "/"
    expect(last_response).to be_ok
  end
end
require 'spec_helper'


describe 'grandma app' do
  it "renders homepage" do
    get '/'
    expect(last_response).to be_ok
  end

  it "can say something to grandma" do
  	post '/grandma', :user_input => "ASDSDS"
  	expect(last_response).to be_ok
  end
end
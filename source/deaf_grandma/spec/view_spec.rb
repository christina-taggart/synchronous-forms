require 'spec_helper'

describe 'talking to Grandma', type: :feature do

  it 'lets you talk to Grandma' do
    visit '/'
    within('form') do
      fill_in 'user_input', with: 'hi, grandma!'
    end
    click_button 'Say it!'
    expect(page).to have_content 'Speak up Sonny!!!'
  end

  it 'should respond differently to input in caps than to lowercase' do
    visit '/'
    within('form') do
      fill_in 'user_input', with: 'HI, GRANDMA'
    end
    click_button 'Say it!'
    page.should_not have_content 'Speak up Sonny!!!'
  end

end
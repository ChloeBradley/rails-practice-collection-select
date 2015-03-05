require 'rails_helper'

feature 'employment' do

  scenario 'User can create employment' do
    visit root_path
    click_link "New Employment"
  end
end

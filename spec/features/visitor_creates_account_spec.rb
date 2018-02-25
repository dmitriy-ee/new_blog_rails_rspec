require "rails_helper"

RSpec.feature "Account Creation",  :type => :feature do 
  scenario "allow guest to create account" do
    visit new_user_password_path

    fill_in :user_email, :with => 'user@example.com'
    fill_in :user_name, :with => 'mike'
    fill_in :user_password, :with => 'secure!123#'
    fill_in :user_password_confirmation, :with => 'secure!123#'
    
    click_button 'Sign up'
    
    expect(page).to have_content ''
  end

end
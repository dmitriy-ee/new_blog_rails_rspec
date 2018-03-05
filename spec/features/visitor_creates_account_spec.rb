require "rails_helper"

RSpec.feature "Account Creation",  :type => :feature do 
  scenario "allow guest to create account" do
    sign_up
    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end

  def sign_up
      visit new_user_registration_path

      fill_in :user_email, :with => 'user@example.com'
      fill_in :user_username, :with => 'asass'
      fill_in :user_password, :with => 'secure!123#'
      fill_in :user_password_confirmation, :with => 'secure!123#'
      
      click_button 'Sign up'
  end

end
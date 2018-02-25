require "rails_helper"

RSpec.feature "Account Creation",  :type => :feature do 
  scenario "allow guest to create account" do
    sign_up
    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end

end
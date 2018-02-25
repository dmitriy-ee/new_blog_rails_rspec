require "rails_helper"

RSpec.feature "Contact Creation",  :type => :feature do 
  scenario "allow acces to contacts page" do
    visit '/contacts'

    expect(page).to have_content I18n.t('contacts.contact_us')
  end
end
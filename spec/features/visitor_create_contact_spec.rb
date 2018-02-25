require "rails_helper"

RSpec.feature "Contact Creation",  :type => :feature do 
  scenario "allow acces to contacts page" do
    visit '/contacts'

    expect(page).to have_content I18n.t('contacts.contact_us')
  end

  scenario "allows a guest to create contact" do
    visit '/contacts'

    fill_in :contacts_email, :with => 'user@example.com'
    fill_in :contacts_message, :with => 'something'
    click_button 'Send message'

    expect(page).to have_content 'Thanks'
  end


end
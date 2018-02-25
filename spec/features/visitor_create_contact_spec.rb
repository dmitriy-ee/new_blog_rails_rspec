require "rails_helper"

RSpec.feature "Contact Creation",  :type => :feature do 
  scenario "allow acces to contacts page" do
    visit '/contacts'

    expect(page).to have_content 'Contact us'
  end
end
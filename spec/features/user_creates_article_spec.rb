require "rails_helper"

RSpec.feature "Article Creation",  :type => :feature do
  before(:all) do
    sign_up
  end

  scenario "allow user to visit new article page" do
    visit new_article_path
    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end

end
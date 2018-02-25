require "rails_helper"

RSpec.describe Comment, :type => :model do

  it do 
    should belong_to :article
  end
  
end
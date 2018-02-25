require 'spec_helper'

describe Comment do

  it do 
    should belong_to :article
  end
  
end
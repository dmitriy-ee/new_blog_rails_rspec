require 'spec_helper'

describe Contact do

  it do 
    should validate_presence_of :email
  end

  it do
    should validate_presence_of :message
  end
  
end
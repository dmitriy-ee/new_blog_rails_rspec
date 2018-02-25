class ContactsController < ApplicationController

  def new
  end

  def create
    @contacts = Contact.new(contacts_params)
    if @contacts.valid?
      @contacts.save
    else
      render action: 'new'
    end
    
  end
  
  private
    def contacts_params
      params.require(:contacts).permit(:email, :message)
    end

end

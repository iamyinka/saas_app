class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      flash[:success] = "Message Successfully Sent"
      redirect_to contact_us_path
    else
      flash[:danger] = "Error Occurred! Please ensure all fields are correctly filled"
      redirect_to contact_us_path
    end
    
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :comments)
  end
  

end
class ContactsController < ApplicationController

  def index
    @contact = ContactForm.new
  end

  def create
    @contact = Contact.new
    @contact.create(contact_params)
    if @contact.deliver
      render json: { message: 'Email sent successfully' }
    else
      render json: @contact.errors

    end
  end

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end

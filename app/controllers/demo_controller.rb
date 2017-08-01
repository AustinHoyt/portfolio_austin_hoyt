class DemoController < ApplicationController
  
  def index
    @contact = Contact.new
  end
  
  def submit
    @contact = Contact.new(contact_params)
    if @contact.save
      @name = params[:contact][:name]
      @email = params[:contact][:email]
      @comments = params[:contact][:comments]
      ContactMailer.contact_email(name, email, comments).deliver
      redirect_to root_path
      flash[:success] = "Message sent! Thank you for contacting me!"
    else
      redirect_to(:action => 'index')
    end
  end
 
  private

  def contact_params
    params.require(:contact).permit(:first_name, :email, :comments)
  end

end

class ContactMailer < ActionMailer::Base
  default to: 'AHoytDeveloper@Gmail.com'
  
  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body
    
    mail(from: email, subject: 'Portfolio Contact Message')
  end
end
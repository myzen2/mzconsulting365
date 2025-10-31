class ContactMailer < ApplicationMailer
  def contact_email(name, email, message)
    @name = name
    @email = email
    @message = message
    mail(to: "mehdi.zenbil@orange.fr", subject: "Nouveau message depuis MZ Consulting 365")
  end
end

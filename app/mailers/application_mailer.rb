class ApplicationMailer < ActionMailer::Base
  default from: 'contact@mzconsulting365.fr'
  layout "mailer"
  def contact_email(contact)
    @contact = contact
    mail(to: 'contact@mzconsulting365.fr', subject: "Nouvelle demande de devis: #{@contact.firstname} #{@contact.lastname}")
  end
end

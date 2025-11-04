class ContactMailer < ApplicationMailer
  default to: 'contact@mzconsulting365.fr'

  def contact_email(contact)
    @contact = contact
    mail(
      to: 'contact@mzconsulting365.fr',
      cc: @contact.email,
      subject: "Nouvelle demande de contact : #{@contact.firstname} #{@contact.lastname}"
    )
  end
end

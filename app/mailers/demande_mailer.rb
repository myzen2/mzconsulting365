class DemandeMailer < ApplicationMailer
  def new_demande_email(demande)
    @demande = demande
    mail(to: "contact@mzconsulting365.fr",
    subject: "[MZ Consulting 365] Nouvelle demande de contact")
  end
end

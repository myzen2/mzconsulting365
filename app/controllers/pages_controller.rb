class PagesController < ApplicationController
  def home
  end

  def services
  end

  def index
  end

end


=begin
@demande = Demande.new(demande_params)

if @demande.save
# Envoi de l'email
DemandeMailer.new_demande_email(@demande).deliver_later

# Redirection vers la page de succès
redirect_to contact_success_path, notice: "Votre message a bien été envoyé. Nous vous répondrons dans les plus brefs délais."
else
render :contact, alert: "Une erreur est survenue. Veuillez réessayer."
end
=end

class ContactsController < ApplicationController
  def new
    @contact = Contact.new()
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.contact_email(@contact).deliver_now
      redirect_to thank_you_path, notice: 'Message envoyé avec succès !'
    else
      render :new
    end
  end

  def thank_you
    # Affiche la page de confirmation
  end

  private

  def contact_params
    params.require(:contact).permit(:firstname, :lastname, :email, :phone, :enterprise, :service, :message, :rgpd_consent)
  end
end

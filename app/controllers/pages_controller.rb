class PagesController < ApplicationController
  def home
  end
  def create_contact
    name = params[:name]
    email = params[:email]
    message = params[:message]
    ContactMailer.contact_email(name, email, message).deliver_now
    redirect_to root_path, notice: "Merci pour votre message ! Nous vous répondrons bientôt."
  end

end

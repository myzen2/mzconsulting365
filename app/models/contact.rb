
# app/models/contact.rb
class Contact < ApplicationRecord
  validates :firstname, :lastname, :email, :service, :message, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :rgpd_consent, acceptance: { accept: true }
end

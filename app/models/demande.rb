# app/models/demande.rb
class Demande < ApplicationRecord
  validates :name, :lastname, :email, :message, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end

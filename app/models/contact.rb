class Contact < ApplicationRecord
  validates :firstname, :lastname, :email, :message, presence: true
end

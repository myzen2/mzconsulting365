class AddRgpdConsentToContacts < ActiveRecord::Migration[8.0]
  def change
    add_column :contacts, :rgpd_consent, :boolean, default: false
  end
end

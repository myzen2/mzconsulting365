class AddServiceToContacts < ActiveRecord::Migration[8.0]
  def change
    add_column :contacts, :service, :string
  end
end

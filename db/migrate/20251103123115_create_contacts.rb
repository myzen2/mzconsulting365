class CreateContacts < ActiveRecord::Migration[8.0]
  def change
    create_table :contacts do |t|
      t.string :firstname
      t.string :lastname
      t.string :enterprise
      t.string :email
      t.string :phone
      t.text :message

      t.timestamps
    end
  end
end

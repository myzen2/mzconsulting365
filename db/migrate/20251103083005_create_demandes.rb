class CreateDemandes < ActiveRecord::Migration[8.0]
  def change
    create_table :demandes do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end

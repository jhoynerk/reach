class CreatePotentialClients < ActiveRecord::Migration
  def change
    create_table :potential_clients do |t|
      t.string :name
      t.string :email
      t.string :last_name
      t.string :title
      t.integer :built_with_id

      t.timestamps null: false
    end
  end
end

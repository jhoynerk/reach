class AddEmailBouncedToPotentialClient < ActiveRecord::Migration
  def change
    add_column :potential_clients, :emailbounced, :boolean
  end
end
class AddUselessToPotentialClients < ActiveRecord::Migration
  def change
    add_column :potential_clients, :useless, :boolean, default: false
    add_column :potential_clients, :comment, :string
  end
end

class AddUserToPotencialClients < ActiveRecord::Migration
  def change
    add_column :potential_clients, :user_id, :integer
  end
end

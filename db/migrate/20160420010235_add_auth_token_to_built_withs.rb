class AddAuthTokenToBuiltWiths < ActiveRecord::Migration
  def change
    add_column :built_withs, :auth_token, :boolean
  end
end

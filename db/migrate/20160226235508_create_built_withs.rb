class CreateBuiltWiths < ActiveRecord::Migration
  def change
    create_table :built_withs do |t|
      t.string :domain
      t.string :location
      t.string :company
      t.string :vertical
      t.string :telephones
      t.string :people
      t.string :position
      t.string :emails
      t.string :twitter
      t.string :facebook
      t.string :linkedin
      t.string :google
      t.string :pinterest
      t.string :github
      t.string :instagram
      t.string :vk
      t.string :vimeo
      t.string :youtube
      t.string :city
      t.string :state
      t.string :zip
      t.string :country

      t.timestamps null: false
    end
  end
end

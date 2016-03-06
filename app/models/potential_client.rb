class PotentialClient < ActiveRecord::Base
  belongs_to :built_with
  belongs_to :user
  validates :last_name, :name,  presence: true, length: { maximum: 50 }
  validates :title, :email,  presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }  
end

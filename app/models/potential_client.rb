class PotentialClient < ActiveRecord::Base
  belongs_to :built_with
  belongs_to :user
  validates :last_name, :name,  presence: true, length: { maximum: 50 }
  validates :title, :email,  presence: true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }  

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv <<  [:id, :name, :email, :last_name, :title]
      all.select(:id, :name, :email, :last_name, :title).each do |product|
        csv << product.attributes.values_at(*["id", "name", "email", "last_name", "title"])
      end
    end
  end
end

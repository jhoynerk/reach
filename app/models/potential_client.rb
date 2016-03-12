class PotentialClient < ActiveRecord::Base
  belongs_to :built_with
  belongs_to :user
  validates :last_name, :name,  presence: true, length: { maximum: 50 }, unless: :useless?
  validates :title, :email,  presence: true, unless: :useless?
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }, unless: :useless?
  scope :between_date, -> (d_start, d_end){
    where(created_at: d_start..d_end)
  }
  scope :not_useless, -> { where(useless: false) }
end

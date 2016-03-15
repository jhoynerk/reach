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
  scope :count_last_week, -> { 
    where(created_at: (Date.today.beginning_of_week-1.week)..(Date.today.end_of_week-1.week)).count
  }
  scope :count_current_week, -> {
    where(created_at: Date.today.beginning_of_week..Date.today.end_of_week).count
  }
  scope :count_last_month, -> {
    where(created_at: (Date.today.beginning_of_month-1.week)..(Date.today.beginning_of_month-1.week)).count
  }
  scope :count_current_month, -> {
    where(created_at: Date.today.beginning_of_month..Date.today.end_of_month).count
  }
  scope :to_user, -> (user_id) { where(user_id: user_id) }
end

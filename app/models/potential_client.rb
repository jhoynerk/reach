class PotentialClient < ActiveRecord::Base
  attr_accessor :firstname
  belongs_to :built_with
  belongs_to :user
  validates :last_name, :name,  presence: true, length: { maximum: 50 }, unless: :useless?
  validates :title, :email,  presence: true, unless: :useless?
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }, unless: :useless?

  scope :email_bounced, -> { where(emailbounced: true) }
  scope :between_date, -> (d_start, d_end){
    where(created_at: d_start..d_end)
  }

  scope :not_useless, -> { where(useless: false) }
  scope :last_week, -> do 
    where(created_at: (Date.today.beginning_of_week-1.week)..(Date.today.end_of_week-1.week))
  end
  scope :current_week, -> do
    where(created_at: Date.today.beginning_of_week..Date.today.end_of_week)
  end
  scope :last_month, -> do
    where(created_at: (Date.today.beginning_of_month-1.month)..(Date.today.end_of_month-1.month))
  end
  scope :current_month, -> do
    where(created_at: Date.today.beginning_of_month..Date.today.end_of_month)
  end
  scope :to_user, -> (user_id) { where(user_id: user_id) } 

  def self.firstname(name)
    name.to_s.split(' ').first
  end
  def self.count_emails_bounced
    PotentialClient.email_bounced.count
  end
  def self.count_last_week
    PotentialClient.last_week.count
  end
  def self.count_last_month
    PotentialClient.last_month.count
  end
  def self.count_current_month
    PotentialClient.current_month.count
  end
  def self.count_current_week
    PotentialClient.current_week.count
  end
end

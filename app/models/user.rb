class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :potential_clients
  
  scope :by_potential_clients,-> (date_start,date_end) { joins(:potential_clients).distinct.where(potential_clients: {created_at: date_start..date_end}).not_admin }

  scope :not_admin, -> { where(admin: [false, nil]) }

  def potential_clients_by_user(d_start,d_end)
  	 potential_clients.between_date(d_start,d_end).count
  end
end

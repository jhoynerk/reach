class PotentialClient < ActiveRecord::Base
  belongs_to :built_with
  belongs_to :user
end

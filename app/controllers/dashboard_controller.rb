class DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
    @built_with = PotentialLead.list
    @potential_client = PotentialClient.new(built_with_id: @built_with.id) unless @built_with.nil?
  end
end
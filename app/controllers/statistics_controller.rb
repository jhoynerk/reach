class StatisticsController < ApplicationController

  def index
    @users = User.not_admin
  end
end

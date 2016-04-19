class StatisticsController < ApplicationController

  def index
    @users = User.not_admin
    authorize! :see_dashboard, @users
  end
  def range_date
    @date_start=params[:date_start].to_date.beginning_of_day
    @date_end=params[:date_end].to_date.end_of_day
    @users=User.by_potential_clients(@date_start,@date_end)
    render "statistics/index.html.slim"
  end
end

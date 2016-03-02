class DashboardController < ApplicationController

  def index
    @built_with = PotentialLead.list

    if @built_with.nil?
      return render :text => "Contact Ivan. There are no more leads here"
    end
    @potential_client = PotentialClient.new(built_with_id: @built_with.id)
  end

end

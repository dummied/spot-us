class Myspot::PledgesController < Myspot::MyspotController

  resources_controller_for :pledges, :only => :index

  private

  def find_resources
    current_user.pledges
  end
end

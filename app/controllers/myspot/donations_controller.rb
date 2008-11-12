class Myspot::DonationsController < Myspot::MyspotController

  resources_controller_for :donations, :only => :index

  protected

  def find_resources
    current_user.donations.paid
  end
end

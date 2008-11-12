class Myspot::TipsController < Myspot::MyspotController
  resources_controller_for :tips, :only => :index

  private

  def find_resources
    current_user.tips
  end
end

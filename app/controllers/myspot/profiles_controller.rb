class Myspot::ProfilesController < Myspot::MyspotController

  resources_controller_for :profile,
                           :class     => User,
                           :singleton => true,
                           :only      => [:edit, :update, :show] do
    current_user
  end
end

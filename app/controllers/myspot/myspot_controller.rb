class Myspot::MyspotController < ApplicationController
  before_filter :login_required 
  before_filter :set_myspot_flash
  before_filter :set_overdrawn_message
  
  protected
  
  def set_myspot_flash
    unless current_user.hide_optional_msg? 
      if current_user.pw_needs_update?
        flash[:notice] = ["<h2>Hi, #{current_user.first_name}</h2><p>You might want to consider ...</p><ul>"]
        flash[:notice] << "<li>Resetting your password under <a href=\"#{edit_myspot_settings_path}\">Settings</a>.</li>" 
      end
      if current_user.profile_needs_update?
        flash[:notice] ||= ["<h2>Hi, #{current_user.first_name}</h2><p>You might want to consider ...</p><ul>"]
        flash[:notice] << "<li><a href=\"#{myspot_profile_path}\">Creating a profile</a>.</li>"
      end 
      unless flash[:notice].blank?
         flash[:notice] << "</ul>"
      end  
    end
  end  
  
  def set_overdrawn_message
    
  end
  
 
end
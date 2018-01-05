class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #=before_action :authenticate_user!

  def appt_time
    appointment_time.in_time_zone(time_zone) 
  end
end


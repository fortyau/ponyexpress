class ApplicationController < ActionController::Base

  # before_filter :protect

  def protect
    w = Whip.find_by_ip(request.remote_ip)

    if w.nil?
      # Check for your subnet stuff here, for example
      # if not request.remote_ip.include?('127.0,0')
      render :text => "You are unauthorized to use this service"
      return
    end
  end

end

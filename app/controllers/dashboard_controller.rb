class DashboardController < ApplicationController
  before_filter :check_session 
 
  def index
    render :layout => 'admin' 
  end

end

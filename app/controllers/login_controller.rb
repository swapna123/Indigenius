class LoginController < ApplicationController
  layout nil 

 def new    
    @administrator = Administrator.new
  end

 def create
 
   @administrator = Administrator.new(params[:administrator])
   @admin = Administrator.find_all_by_username(@administrator.username)
   if(!@admin.blank? && @admin.first.password.eql?(@administrator.password))
    session[:admin] = @admin.first.id
    flash[:notice] = "Logged in Successfully"
    redirect_to dashboard_index_path
   else
    flash[:error] = "Failed to login"
    redirect_to new_login_path
   end

  end


  def logout   
   session[:admin] = nil if session[:admin]   
   redirect_to new_login_path
  end

end

class SessionsController < ApplicationController

	before_filter :no_reg_login_current_user, :except => :destroy

	def new
	end

	def create
	  user = User.find_by_email(params[:email])
	  if user && user.authenticate(params[:password])
	    if params[:remember_me]
	      cookies.permanent[:auth_token] = user.auth_token
	    else
	      cookies[:auth_token] = user.auth_token
	    end
	    redirect_to root_url, :notice => "Logged in!"
	  else
	    flash.now.alert = "Invalid email or password"
	    render "new"
	  end
	end

	def destroy
		cookies.delete(:auth_token)
  		redirect_to '/login', :notice => "Logged out!"
	end

end

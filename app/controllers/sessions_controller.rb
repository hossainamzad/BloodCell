  class SessionsController < ApplicationController
	def new
    @user = User.where(id: session[:user_id]).first
	end

	def create   
    user = User.where(username: params[:username]).first   
    if user && user.authenticate(params[:password])     
      session[:user_id] = user.id   
      flash[:notice] = "You have successfully logged In"
      redirect_to main_path
    else     
      flash[:notice] = "Error! Please, try again."  
      redirect_to root_path 
    end 
  end

  def destroy
  	session[:user_id] = nil 
    flash[:notice] = "Logged Out"     
  	redirect_to root_path
	end
end
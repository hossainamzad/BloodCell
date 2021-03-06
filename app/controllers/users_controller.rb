class UsersController < ApplicationController
	def index
		@users = User.all.reverse
	end

  def show
    @user = User.find(params[:id])
   
  end

	def new
    @disable_nav = true

		@user = User.new
	end

	def create
		@user = User.new(username: params[:user][:username], 
      password: params[:user][:password], 
     )
    @user.save
    if @user.save
      flash[:notice] = "User is created"
      redirect_to users_path

    else
      flash[:alert] = "There was a problem. Please, try again."
      redirect_to new_user_path

    end
  end	

	def edit
     @user = User.find(params[:id])

  end

  def destroy
     @user = User.find(params[:id])
     @user.destroy
     redirect_to users_path
  end

  def update
    @user = User.find(params[:id])
    @user.update(username: params[:user][:username], 
      password: params[:user][:password]
      )
    @user.save
    redirect_to users_path
  end

end

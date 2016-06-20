class UsersController < ApplicationController
	def index
		@users = User.all
	end

  def show
    @user = User.find(params[:id])
   
  end

	def new
		@user = User.new
	end

	def create
		@user = User.new(username: params[:user][:username], 
      password: params[:user][:password], 
     )
    @user.save
    if @user.save
      flash[:notice] = "User is created"
    else
      flash[:alert] = "There was aproblem. please, try again."
    end
    redirect_to users_path
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

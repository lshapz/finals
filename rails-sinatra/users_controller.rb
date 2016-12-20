class UsersController < ApplicationController

  def new
    @user = User.new
  end
  # get /users/new

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end
  # post /users

  def index
    @users = User.all
  end
  # get /users

  def show
    @user = User.find(params[:id])
  end
  # get /users/id

  def edit
    @user = User.find(params[:id])
  end

  # get /users/id/edit


  def update
    @user = User.update(user_params)
      if @user.valid? 
        redirect_to user_path(@user)
      else 
        render :edit
      end
  end

# post /users/id

  def destroy
    @user = User.find(params[:id])
    @user.delete
    redirect_to new_user_path
  end

# delete /users/id

end


# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.

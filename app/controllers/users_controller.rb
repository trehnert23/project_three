class UsersController < ApplicationController
  def index
  end

  def new
  end

  def create
    userParams = params.require(:user).permit(:email, :password)
    @user = User.new userParams
    if @user.save
      login(@user)
      redirect_to "/items"
    else
      redirect_to "/"
    end
  end

  def show
    @user = current_user
    @item = Item.new
    @items = @user.items
    
  end

  def edit
    id = params[:id]
    @user = User.find_by_id(id)
  end

  def update
  end

  def destroy
  end
end
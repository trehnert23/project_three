class ItemsController < ApplicationController
	def index
		@items = Item.all;
	end

	def show
		@user = User.find_by_id(params[:id])
		@current_user = current_user
		@item = Item.find(params[:id]);
		@id = @item.user_id
		@other_user = User.find_by_id(@id)
		@email = @other_user.email
	end

	def new
		@item = Item.new;
	end

	def create
		@user = current_user
		item_params = params.require(:item).permit(:title, :price, :description, :photo)
		item_params[:user_id] = @user.id
		@item = Item.new(item_params)
		
		if @item.save
		 redirect_to('/items')
		end
	end

	

	
end

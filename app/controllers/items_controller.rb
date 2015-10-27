class ItemsController < ApplicationController
	def index
		@items = Item.all;
	end

	def show
		@item = Item.find(params[:id]);
	end

	def new
		@item = Item.new;
	end

	def create
		Item.create(item_params)
		redirect_to('/items')
	end

	private

	def item_params
	  	params.require(:item).permit(:title, :price, :description, :photo)
	end
end

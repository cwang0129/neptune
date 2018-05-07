class ItemsController < ApplicationController
	before_action :set_item, only: [:edit, :update, :show, :destroy]
	
	def index
		@items = Item.all
	end 

	def new
		@item = Item.new
	end

	def edit
	end

	def create
		#render plain: params[:item].inspect
		@item = Item.new(item_params)
		if @item.save
			flash[:notice] = "Item was successfully created"
			redirect_to item_path(@item)
		else 
			render 'new'
		end
	end

	def update
		if @item.update(item_params)
			flash[:notice] = "item was updated"
			redirect_to item_path(@item)
		else
			render 'edit'
		end
	end

	def show
	end

	def destroy
		@item.destroy
		flash[:notice] = "Item was deleted"
		redirect_to items_path
	end

	private
		def set_item
			@item = Item.find(params[:id])
		end 

		def item_params
			params.require(:item).permit(:name, :sku, :id, :active)
		end

end
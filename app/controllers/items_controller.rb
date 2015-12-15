class ItemsController < ApplicationController
  
  def create
    @item = Item.new(params.require(:item).permit(:name))
    @item.user_id = current_user.id
    @item.save
    redirect_to "/users/show"
  end

  def new
    @item = Item.new
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
        flash[:notice] = "Item  was deleted successfully."
        redirect_to "/users/show"
      else
        flash[:error] = "There was an error deleting the item. Please try again."
        redirect_to "/users/show"
      end
    end
  end 

 
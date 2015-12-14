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


   
end 

 
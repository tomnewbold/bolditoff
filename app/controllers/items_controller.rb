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
    @item.destroy
    end
    respond_to do |format|
       format.html
       format.js 
     end
  end 

 
class ItemsController < ApplicationController

def index
  
  @item = Item.all
  
end

def new
  
  @item = Item.new

end

def create
  
  @item = Item.create(from_the_ui)
  if @item.save
    
    flash[:notice] = "This item was successfully saved"
    redirect_to items_path
    
  else
    
    render 'new'
    
  end

end

def edit
  
  @item = Item.find(params[:id])
  
end

def update
  
  @item = Item.find(params[:id])
  
  if @item.update(from_the_ui)
    flash[:notice] = "your item was updated"
    redirect_to items_path
  else
    render 'edit'
  end
  
end

def destroy
  
  @item = Item.find(params[:id])
  @item.destroy
  redirect_to items_path
  
end

def show
  
  @item = Item.find(params[:id])
  
end

private 
  def from_the_ui
    
    params.require(:item).permit(:Item_Number,:Item_Name,:Qty,:unit_of_measure,:Frequency)

  end


end

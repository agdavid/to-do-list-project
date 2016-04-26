class ItemsController < ApplicationController

  def create
    #because of nested resource, params has :list_id
    @list = List.find(params[:list_id])
    #use collection builder method to associate item with list, but not save
    @item = @list.items.build(item_params)
    #validate before saving
    if @item.save
      redirect_to list_path(@list)
    else
      render "/lists/show"
    end
  end

  private
    def item_params
      params.require(:item).permit(:description)
    end

end

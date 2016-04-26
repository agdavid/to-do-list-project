class ItemsController < ApplicationController

  def create
    #because of nested resource, params has :list_id
    @list = List.find(params[:list_id])
    #use collection builder method to associate item with list, but not save
    @item = @list.items.build(item_params)
    #validate before saving
    if @item.save
      #validations pass, go to updated lists/show
      redirect_to list_path(@list)
    else
      #validations fail, go to lists/show with @list with errors
      render "/lists/show"
    end
  end

  private #strong params
    def item_params
      params.require(:item).permit(:description)
    end

end

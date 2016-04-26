class ListsController < ApplicationController

  def index #doubles as #new action
    @list = List.new #stub out new @list for form_for FormHelper
    @lists = List.all #query db for all @lists
  end

  def show
    @list = List.find(params[:id])
    @item = Item.new #debugged; otherwise added "nil" item to list of items
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      @lists = List.all
      render "index"
    end
  end

  private
    def list_params
      params.require(:list).permit(:name)
    end
end

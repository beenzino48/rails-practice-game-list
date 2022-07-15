class ListsController < ApplicationController
  def index
    # this method returns all lists
    @lists = List.all
  end

  def show
    # return one list
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_params)
    if @list.save!
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def new
    @list = List.new
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end

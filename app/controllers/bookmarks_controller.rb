# This is the code for the bookmarks actions
class BookmarksController < ApplicationController
  def new
    # find a bookmark then make a new bookmark
    # first find the list through it's id
    @list = List.find(params[:list_id])
    # find the game from all the games in the class
    @game = Game.all
    # create the new bookmark
    @bookmark = Bookmark.new
  end

  def create
    # make a new bookmark using strong params
    @bookmark = Bookmark.new(bookmark_params)
    # get the list id and attach it to bookmark
    @list = List.find(params[:list_id])
    @bookmark.list = @list

    @bookmark.save
    redirect_to list_path(@list)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :game_id)
  end
end

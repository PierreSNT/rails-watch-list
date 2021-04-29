class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    # @movie = Movie.find(params[:movie_id])
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @list = List.find(params[:list_id])
    # @movie = Movie.find(params[:movie_id])
    @bookmark.list = @list
    # @movie.list = @movie
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def destroy
    bookmark = Bookmark.find(params[:id])
    # bookmark = Bookmark.find
    @list = List.find(params[:list_id])
    bookmark.list = @list
    bookmark.destroy

    redirect_to list_path(@list)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:list_id, :movie_id, :comment)
  end

end

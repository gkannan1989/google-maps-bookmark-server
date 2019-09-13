class BookmarksController < ApplicationController
  def index
   bookmarks = Bookmark.order("created_at DESC")
   render json: bookmarks
  end

  def create
    bookmark = Bookmark.create(bookmark_param)
    render json: bookmark
  end

  def update
    bookmark = Bookmark.find(params[:id])
    bookmark.update_attributes(bookmark_param)
    render json: bookmark
  end

  def destroy
    bookmark = Bookmark.find(params[:id])
    bookmark.destroy
    head :no_content, status: :ok
  end
   
  private
    def bookmark_param
      params.require(:bookmark).permit(:lat, :lng, :title, :editable, :idx) 
    end
end

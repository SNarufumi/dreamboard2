class FavoritesController < ApplicationController
	before_action :authenticate_user!

	def create
        @favorite = Favorite.create(user_id: current_user.id, book_id: params[:book_id])
        @favorites = Favorite.where(book_id: params[:book_id])
    end

    def destroy
        @favorite = current_user.likes.find_by(book_id: params[:book_id])
        @favorite.destroy
        @favorites = Like.where(book_id: params[:book_id])
    end
end


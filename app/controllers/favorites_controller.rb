class FavoritesController < ApplicationController
  before_action :authenticate_user

  def index
    @favorites = current_user.favorites
    render json: @favorites
  end

  def create
    @favorite = Favorite.new(user: current_user, movie_id: params[:movie_id])

    if @favorite.save
      render json: @favorite, status: :created
    else
      render json: { error: @favorite.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @favorite = Favorite.find_by(user: current_user, movie_id: params[:id])

    if @favorite
      @favorite.destroy
      head :no_content
    else
      render json: { error: "Favorite not found" }, status: :not_found
    end
  end
end

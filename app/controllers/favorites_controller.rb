class FavoritesController < ApplicationController
  before_action :authenticate_user

  def index
    @favorites = current_user.favorites
    favorite_movies = []

    @favorites.each do |favorite|
      movie_id = favorite.movie_id
      movie_data = fetch_movie_data(movie_id)
      favorite_movies << movie_data if movie_data
    end

    render json: favorite_movies
  end

  def show
    @favorite = Favorite.find_by(user_id: current_user, movie_id: params[:id])

    if @favorite
      render json: @favorite
    else
      render json: { error: "Favorite not found" }, status: :not_found
    end
  end

  def create
    if current_user.favorites.count >= 40
      render json: { error: "Favorites limit reached" }, status: :unprocessable_entity
    else
      @favorite = Favorite.new(user: current_user, movie_id: params[:movie_id])

      if @favorite.save
        render json: @favorite, status: :created
      else
        render json: { error: @favorite.errors.full_messages }, status: :unprocessable_entity
      end
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

  def fetch_movie_data(movie_id)
    response = HTTP.auth("Bearer #{ENV["MOVIE_ACCESS_TOKEN"]}").get("https://api.themoviedb.org/3/movie/#{movie_id}")

    if response.status.success?
      return response.parse(:json)
    else
      Rails.logger.error("Failed to fetch movie data for movie ID: #{movie_id}")
      return nil
    end
  end
end

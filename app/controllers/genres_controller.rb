class GenresController < ApplicationController
  def index
    response = HTTP.auth("Bearer #{ENV["MOVIE_ACCESS_TOKEN"]}").get("https://api.themoviedb.org/3/genre/movie/list?language=en")
    genre_data = response.parse(:json)
    genres = genre_data["genres"]
    render json: genres
  end
end

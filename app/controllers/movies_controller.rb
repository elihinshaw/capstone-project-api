class MoviesController < ApplicationController
  def index
    page = params[:page] || 1

    if params[:search]
      response = HTTP.auth("Bearer #{ENV["MOVIE_ACCESS_TOKEN"]}").get("https://api.themoviedb.org/3/search/movie?query=#{params[:search]}&page=#{page}")
    else
      response = HTTP.auth("Bearer #{ENV["MOVIE_ACCESS_TOKEN"]}").get("https://api.themoviedb.org/3/discover/movie?include_adult=false&include_video=false&language=en-US&page=#{page}&sort_by=popularity.desc&with_genres=%2C")
    end
    movie_data = response.parse(:json)
    movies = movie_data["results"]

    genre_response = HTTP.auth("Bearer #{ENV["MOVIE_ACCESS_TOKEN"]}").get("https://api.themoviedb.org/3/genre/movie/list?language=en")
    genre_data = genre_response.parse(:json)
    genres = genre_data["genres"]

    movies_with_genres = movies.map do |movie|
      genre_names = genres.select { |genre| movie["genre_ids"].include?(genre["id"]) }.map { |genre| genre["name"] }
      movie.merge("genres" => genre_names)
    end

    render json: movies_with_genres
  end
end

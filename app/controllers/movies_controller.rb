class MoviesController < ApplicationController
  
  # GET /movies/
  def index
    @movies = Movie.all
  end
  
  # GET /movies/new/
  def new
    @movie = Movie.new
  end
  
  def create
    @movie = Movie.new(params[:movie])
    @movie.save!
    redirect_to movies_path
  end
  
end
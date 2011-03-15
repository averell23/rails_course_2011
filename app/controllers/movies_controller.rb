class MoviesController < ApplicationController
  
  before_filter :require_login, :only => [:new, :create, :update, :edit, :destroy]
  
  # GET /movies/
  def index
    @movies = Movie.all
  end
  
  # GET /movies/new/
  def new
    @movie = Movie.new
  end
  
  # POST /movies/
  def create
    @movie = Movie.new(params[:movie])
    if(@movie.save)
      flash[:notice] = "Saved the new movie"
      redirect_to movies_path
    else
      render :action => 'new'
    end
  end
  
  # GET /movies/1
  def show
    @movie = Movie.find(params[:id])
  end
  
  # GET movies/1/edit
  def edit
    @movie = Movie.find(params[:id])
    render :action => 'new'
  end
  
  # PUT movies/1
  def update
    @movie = Movie.find(params[:id])
    @movie.update_attributes!(params[:movie])
    redirect_to movie_path(@movie)
  end
  
  # DELETE movies/1
  def destroy
    Movie.destroy(params[:id])
    flash[:notice] = "The movie is now dead"
    redirect_to movies_path
  end
  
  
end
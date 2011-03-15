class ReviewsController < ApplicationController
  
  before_filter :find_movie
  before_filter :require_login, :only => [:new, :create]
  
  # GET movies/:id/reviews
  def index
    @reviews = @movie.reviews
  end
  
  def new
    @review = Review.new(:author => session[:current_user_name])
  end
  
  def create
    @review = @movie.reviews.create(params[:review])
    if(@review.save)
      redirect_to movie_reviews_url(@movie)
    else
      render :action => 'new'
    end
  end
  
  def show
    @review = Review.find(params[:id])
  end
  
  protected
  
  def find_movie
    @movie = Movie.find(params[:movie_id])
  end
  
end

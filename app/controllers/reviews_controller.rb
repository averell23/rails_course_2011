class ReviewsController < ApplicationController
  
  # GET movies/:id/reviews
  def index
    @movie = Movie.find(params[:movie_id])
    @reviews = @movie.reviews
  end
  
end

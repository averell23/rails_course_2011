class Review < ActiveRecord::Base
  
  belongs_to :movie
  
  validates_presence_of :author, :text, :movie_id
  
end

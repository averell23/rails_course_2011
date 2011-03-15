class Movie < ActiveRecord::Base
  
  validates_presence_of :title
  validates_uniqueness_of :title
  validates_presence_of :director
  
end

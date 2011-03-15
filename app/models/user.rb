class User < ActiveRecord::Base
  
  attr_accessor :password_confirmation
  
   
   # NEVER DO THIS IN REAL LIFE! NO PASSWORDS IN THE DATABASE!
  validates_presence_of :password
  validates_presence_of :username
  validates_confirmation_of :password
  
end

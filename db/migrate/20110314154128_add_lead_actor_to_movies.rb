class AddLeadActorToMovies < ActiveRecord::Migration
  def self.up
    add_column :movies, :lead_actor, :string
  end

  def self.down
    remove_column :movies, :lead_actor
  end
end

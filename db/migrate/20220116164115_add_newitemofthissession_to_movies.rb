class AddNewitemofthissessionToMovies < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :newitemofthissession, :string
  end
end

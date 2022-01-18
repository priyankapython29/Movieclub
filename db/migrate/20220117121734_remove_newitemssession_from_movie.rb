class RemoveNewitemssessionFromMovie < ActiveRecord::Migration[7.0]
  def change
    remove_column :movies, :newitemssession, :string
  end
end

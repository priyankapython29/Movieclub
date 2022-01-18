class RemoveNewsessionFromMovie < ActiveRecord::Migration[7.0]
  def change
    remove_column :movies, :newsession, :string
  end
end

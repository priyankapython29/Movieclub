class AddNewitemssessionToMovie < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :newitemssession, :string
  end
end

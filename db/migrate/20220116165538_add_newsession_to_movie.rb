class AddNewsessionToMovie < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :newsession, :string
  end
end

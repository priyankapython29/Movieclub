class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :moviename
      t.float :rating
      t.integer :yearofrelease
      t.string :category
      t.string :age
      t.float :timehours
      t.string :quality
      t.string :language
      t.string :movieimage

      t.timestamps
    end
  end
end

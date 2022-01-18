class CreateMoviepriceplans < ActiveRecord::Migration[7.0]
  def change
    create_table :moviepriceplans do |t|
      t.string :Basic
      t.string :Premium
      t.string :Cinematic

      t.timestamps
    end
  end
end

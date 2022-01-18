class AddLinkToMovie < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :link, :string
  end
end

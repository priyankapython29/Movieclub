class CreateContactforms < ActiveRecord::Migration[7.0]
  def change
    create_table :contactforms do |t|
      t.string :username
      t.string :email
      t.text :message

      t.timestamps
    end
  
  end
end

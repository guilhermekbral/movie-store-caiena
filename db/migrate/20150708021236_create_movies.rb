class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.float :price
      t.integer :year
      t.string :description
      

      t.timestamps null: false
    end
  end
end

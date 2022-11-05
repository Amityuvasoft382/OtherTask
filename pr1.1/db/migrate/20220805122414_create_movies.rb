class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :gen
      t.date :year
      t.float :price

      t.timestamps
    end
  end
end

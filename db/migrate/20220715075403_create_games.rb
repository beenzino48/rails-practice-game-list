class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :title
      t.string :overview
      t.string :poster_url
      t.integer :rating

      t.timestamps
    end
  end
end

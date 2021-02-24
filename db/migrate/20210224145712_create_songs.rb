class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.belongs_to :genres, foreign_key: true
      t.belongs_to :artists, foreign_key: true

      t.timestamps
    end
  end
end

class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :artist_name
      t.string :track_title
      t.references :station

      t.timestamps
    end
  end
end

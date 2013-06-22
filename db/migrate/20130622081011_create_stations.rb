class CreateStations < ActiveRecord::Migration

  def change
    create_table :stations do |t|
      t.string :title, null: false
      t.string :stream_url, null: false, :length=>2000
      t.timestamps
    end

  end

end

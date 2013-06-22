class Song < ActiveRecord::Base
  attr_accessible :artist_name, :radio_id, :track_title

  belongs_to :station

  validates :artist_name, presence: true
  validates :track_title, presence: true
  validates :station, presence: true

end

class Station < ActiveRecord::Base
  attr_accessible :stream_url, :title

  validates :title, presence: true
  validates :stream_url, presence: true

  has_many :songs, :dependent=>:destroy

end

require 'test_helper'

class SongTest < ActiveSupport::TestCase

  test "create regular song" do
    song = songs(:tuvan)
    assert song.save, "failed to save a regular song"
  end

  test "artist name is required" do
    song = songs(:alive)
    assert !song.save, "artist name is required"
    assert_equal song.errors[:artist_name].count, 1, "artist name field should have an error"
  end

  test "track title is required" do
    song = songs(:heatbeat)
    assert !song.save, "track title is required"
    assert_equal song.errors[:track_title].count, 1, "track title field should have an error"
  end

  test "station is required" do
    song = songs(:beautiful)
    assert !song.save, "station is required"
    assert_equal song.errors[:station].count, 1, "station field should have an error"
  end

end

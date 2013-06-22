require 'test_helper'

class StationTest < ActiveSupport::TestCase

   test "create station from seed" do
     station = stations(:trance)
     assert station.save, "failed to save a regular station"
   end

   test "station title is required" do
     station = stations(:untitled)
     assert !station.save, "the station was saved without title"
     assert_equal station.errors[:title].count, 1, "no errors on the title field"
   end

   test "station stream url is required" do
     station = stations(:no_stream)
     assert !station.save, "the station was saved without stream_url"
     assert_equal station.errors[:stream_url].count, 1, "no errors on the stream field"
   end

end

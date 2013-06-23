require 'background_bunnies'

module BackgroundBunnies
  module Workers
    class StreamMetadata
      include BackgroundBunnies::Bunny
      group :radio

      def process(job)
        stream_title = job.payload['StreamTitle']
        title_parts = stream_title.split('-')
        artist_name = title_parts[0] || '-'
        track_title  = title_parts[1] || '-'
        station_title = job.payload['station_title']
        station = Station.where(title: station_title).first
        station = Station.create!(title: station_title, stream_url: '-') unless station
        station.songs.create!(artist_name: artist_name, track_title: track_title)
        log_info "Processed song #{title_parts.join('-')}"
      end

    end
  end
end

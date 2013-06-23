namespace :radio do
  task :stream_metadata=>:environment do
    a = BackgroundBunnies::Workers::StreamMetadata
    BackgroundBunnies.run(:radio)
  end
end

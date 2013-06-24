BackgroundBunnies.configure(:radio, ENV['CLOUDAMQP_URL'] || 'amqp://guest:guest@localhost:5672')

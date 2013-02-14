WebsocketRails.setup do |config|

  # Change to :debug for debugging output
  config.log_level = :default

  # Change to true to enable standalone server mode
  # Start the standalone server with rake websocket_rails:start_server
  # Requires Redis
  config.standalone = false

  # Change to true to enable channel synchronization between
  # multiple server instances. Requires Redis.
  config.synchronize = false

  # Uncomment and edit to point to a different redis instance.
  # Will not be used unless standalone or synchronization mode
  # is enabled.
  #config.redis_options = {:host => 'localhost', :port => '6379'}
end

WebsocketRails::EventMap.describe do

end

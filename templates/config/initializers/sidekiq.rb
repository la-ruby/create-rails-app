require 'sidekiq/web'

Sidekiq.configure_server do |config|
  config.redis = {protocol: 2}
end

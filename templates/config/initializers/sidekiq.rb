require 'sidekiq/web'

# https://github.com/mperham/sidekiq/issues/5594#issuecomment-1302321968
# TODO: remove me
Sidekiq.configure_server do |config|
  config.redis = {protocol: 2}
end

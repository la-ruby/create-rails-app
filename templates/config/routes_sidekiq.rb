  require 'sidekiq/web'
  require 'sidekiq/cron/web'

  Sidekiq::Web.use Rack::Auth::Basic do |username, password|
    username == ENV['PREFIX_DEVELOPER_EMAIL'] && password == ENV['PREFIX_DEVELOPER_PASSWORD']
  end
  mount Sidekiq::Web => '/sidekiq'

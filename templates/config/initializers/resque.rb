# similar to
# github.com/CityProjects/tmbus/blob/59528f40a18bc0860f63af9e8660b4cd0a1dcf3f/config/initializers/resque.rb

require 'resque'
require 'resque/server'

# configure redis connection
redis_uri = ENV["REDIS_URL"] || "redis://localhost:6379"

uri = URI.parse(redis_uri)
Resque.redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password, :thread_safe => true)
# not sure why we're not simply doing Resque.redis = $redis as mentioned in resque readme

Resque.inline = Rails.env.test?

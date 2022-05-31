  # resque
  require 'resque/server'
  protected_resque = Rack::Auth::Basic.new(Resque::Server.new) do |username, password|
    username == DEVELOPER_EMAIL && password == (DEVELOPER_PASSWORD)
  end
  mount protected_resque, :at => "/resque"

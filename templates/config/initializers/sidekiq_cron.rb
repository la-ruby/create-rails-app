# REVISIT require 'sidekiq-cron'
# REVISIT require 'sidekiq/cron/web'
# REVISIT 
# REVISIT if ENV['DYNO'] =~ /\Aweb/ # runs only when heroku web dyno context detected
# REVISIT   Sidekiq::Cron::Job.load_from_array([
# REVISIT     {
# REVISIT       'name'  => 'example_job',
# REVISIT       'class' => 'ExampleJob',
# REVISIT       'cron'  => '* * * * *'
# REVISIT     }
# REVISIT   ])
# REVISIT end

require 'sidekiq/web'

#
# Scheduling
#
require 'sidekiq-cron'
if ENV['DYNO'] =~ /\Aweb/ # runs only when heroku web dyno context detected
  Sidekiq::Cron::Job.load_from_array([
    {
      'name'  => 'example_job',
      'class' => 'ExampleJob',
      'cron'  => '* * * * *'
    }
  ])
end

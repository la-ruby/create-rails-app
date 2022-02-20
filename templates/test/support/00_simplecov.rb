# Load and launch SimpleCov at the very top of your test/test_helper.rb
# (or spec_helper.rb, rails_helper, cucumber env.rb, or whatever your
# preferred test framework uses)
require 'simplecov'
if ENV['COVERAGE']
  SimpleCov.start 'rails' do
    command_name 'tests'
    add_filter 'app/channels'
    add_filter 'app/controllers/applicatin_controller.rb'
    add_filter 'app/mailers/application_mailer.rb'
    add_filter 'app/jobs/application_job.rb'
    add_filter 'app/helpers/application_helper.rb'
    add_filter 'app/controllers/application_controller.rb'
    add_filter 'app/controllers/examples_controller.rb'
  end
end

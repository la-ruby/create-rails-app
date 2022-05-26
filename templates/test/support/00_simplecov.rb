# Load and launch SimpleCov at the very top of your test/test_helper.rb
# (or spec_helper.rb, rails_helper, cucumber env.rb, or whatever your
# preferred test framework uses)
require 'simplecov'
unless ENV['SKIP_COVERAGE']
  SimpleCov.start 'rails' do
    command_name 'tests'

    # Ignoring rails base classes
    add_filter 'app/channels/application_cable'
    add_filter 'app/mailers/application_mailer.rb'
    add_filter 'app/jobs/application_job.rb'
    # Ignoring examples
    add_filter 'app/controllers/examples_controller.rb'
  end

  SimpleCov.minimum_coverage 100
end

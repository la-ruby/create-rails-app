require 'clockwork'
require './config/boot'
require './config/environment'
require 'active_support/time' # Allow numeric durations (eg: 1.minutes)

module Clockwork
  handler do |job|
    puts "Running #{job}"
  end

  every(5.minutes, 'fiveminutely.job') {
    Rails.logger.info "Example Scheduled Job"
    # ExampleJob.perform_later
  }
end

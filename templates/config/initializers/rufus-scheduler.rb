require 'rufus-scheduler'

# from README
return if defined?(Rails::Console) || Rails.env.test? || File.split($PROGRAM_NAME).last == 'rake'

s = Rufus::Scheduler.singleton

s.every '1h' do
  puts "Example Scheduled Job"
end

puts "rufus-scheduler.rb: done"

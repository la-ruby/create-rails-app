# https://github.com/y-yagi/minitest-test_profile/blob/master/README.md
if ENV['MINITEST_TEST_PROFILE']
  require 'minitest/test_profile'
  Minitest::TestProfile.use!(count: 1000)
end

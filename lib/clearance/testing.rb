require 'clearance/testing/assertion_error'
require 'clearance/testing/deny_access_matcher'
require 'clearance/testing/helpers'

Clearance.configure do |config|
  config.password_strategy = Clearance::PasswordStrategies::Fake
end

if defined?(Test::Unit::TestCase)
  Test::Unit::TestCase.extend Clearance::Testing::Matchers
  class Test::Unit::TestCase
    include Clearance::Testing::Helpers
  end
end

if defined?(RSpec) && RSpec.respond_to?(:configure)
  RSpec.configure do |config|
    config.include Clearance::Testing::Matchers
    config.include Clearance::Testing::Helpers
  end
end

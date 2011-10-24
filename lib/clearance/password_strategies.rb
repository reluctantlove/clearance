module Clearance
  module PasswordStrategies
    autoload :SHA1,   'clearance/password_strategies/sha1'
    autoload :BCrypt, 'clearance/password_strategies/bcrypt'
    autoload :Fake,   'clearance/password_strategies/fake'
  end
end

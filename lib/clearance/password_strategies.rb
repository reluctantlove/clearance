module Clearance
  module PasswordStrategies
    autoload :SHA1,   'clearance/password_strategies/sha1'
    autoload :BCrypt, 'clearance/password_strategies/bcrypt'
  end
end

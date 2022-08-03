class Person < ApplicationRecord
  validates :terms_of_service, acceptance: { message: 'must be abided' }
end

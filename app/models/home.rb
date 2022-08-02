class Home < ApplicationRecord

  validates :name, presence: true
  validates :email, presence: true, length: { minimum: 10 }
end

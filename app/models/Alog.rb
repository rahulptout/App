class Alog < ApplicationRecord
  validates :name, presence: true
  validates :status, acceptance: { accept: ['start', 'mid','complete'] }

end

class Meeting < ApplicationRecord
  validates :name, presence: true
  validates :start_time, presence: true
end

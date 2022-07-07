class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :lawyer

  validates :date, presence: true
  validates :is_active, inclusion: [true, false]
  validates :duration, comparison: { greater_than: 0, less_than: 8 }, numericality: { only_integer: true }
end

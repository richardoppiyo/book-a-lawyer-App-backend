class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :lawyer

  validates :date, presence: true
  validates :is_active, inclusion: [true, false]
  validates :duration, comparison: { greater_than: 0 }, format: { with: /\A\d+(?:\.\d{0,2})?\z/,
                                                                  message: 'max two decimal positions' }
end

class Lawyer < ApplicationRecord
  has_many :reservations, dependent: :destroy

  validates_associated :reservations
  validates :name, presence: true, length: { maximum: 50 }
  validates :phone, presence: true, length: { maximum: 15 }, numericality: { only_integer: true }
  validates :rates, comparison: { greater_than: 0 }, format: { with: /\A\d+(?:\.\d{0,2})?\z/,
                                                               message: 'max two decimal positions' }
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'is not valid' }
  validates :bio, :location, presence: true
end

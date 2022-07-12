class Lawyer < ApplicationRecord
  include Rails.application.routes.url_helpers

  has_many :reservations, dependent: :destroy
  has_one_attached :avatar

  validates_associated :reservations
  validates :name, presence: true, length: { maximum: 50 }
  validates :phone, presence: true, length: { maximum: 15 }, numericality: { only_integer: true }
  validates :rates, comparison: { greater_than: 0 }, format: { with: /\A\d+(?:\.\d{0,2})?\z/,
                                                               message: 'max two decimal positions' }
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'is not valid' }
  validates :bio, :location, :avatar, presence: true
  validates :avatar, file_size: { less_than_or_equal_to: 1.megabytes },
                     file_content_type: { allow: ['image/jpeg', 'image/png', 'image/gif'] }

  def as_json(_)
    super(methods: :avatar_url)
  end

  def avatar_url
    rails_blob_url avatar
  end
end

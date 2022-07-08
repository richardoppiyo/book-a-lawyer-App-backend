class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

  has_many :reservations, dependent: :destroy
  has_one_attached :avatar

  validates_associated :reservations
  validates :name, presence: true, length: { maximum: 50 }
  validates :phone, presence: true, length: { maximum: 15 }, numericality: { only_integer: true }
  validates :avatar, file_size: { less_than_or_equal_to: 1.megabytes },
                     file_content_type: { allow: ['image/jpeg', 'image/png', 'image/gif'] }
end

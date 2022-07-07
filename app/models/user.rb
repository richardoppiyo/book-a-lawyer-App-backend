class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reservations, dependent: :destroy

  validates_associated :reservations
  validates :name, presence: true, length: { maximum: 50 }
  validates :phone, presence: true, length: { maximum: 15 }, numericality: { only_integer: true }
end

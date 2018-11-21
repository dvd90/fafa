class User < ApplicationRecord
  has_many :orders
  has_many :jewels, through: :orders
  validates :name, presence: true
  validates :adress, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

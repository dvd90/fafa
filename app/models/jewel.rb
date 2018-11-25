class Jewel < ApplicationRecord
  monetize :price_cents
  mount_uploader :photo, PhotoUploader
  validates :name, presence: true
  validates :description, presence: true
  has_many :orders
end

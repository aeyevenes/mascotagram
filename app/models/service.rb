class Service < ApplicationRecord
  has_many_attached :photos
  belongs_to :category
  belongs_to :provider
  has_many :social_networks, dependent: :destroy
  has_many :appointments, dependent: :destroy
  # Geocoded
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end

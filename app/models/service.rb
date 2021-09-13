class Service < ApplicationRecord
  has_many_attached :photos
  belongs_to :category
  belongs_to :provider
  has_many :social_networks, dependent: :destroy
  has_many :appointments, dependent: :destroy
end

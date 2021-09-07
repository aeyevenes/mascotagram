class Service < ApplicationRecord
  belongs_to :category
  belongs_to :provider
  has_many :social_networks
  has_many :appointments
end

class Location < ApplicationRecord
  has_many :periods
  accepts_nested_attributes_for :periods
end

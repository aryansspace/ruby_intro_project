class Citizen < ApplicationRecord
  belongs_to :country

  validates :name, presense: true
end

class VaccineType < ApplicationRecord
  has_many :vaccines
  has_many :suggested_doses
  has_many :campaigns
end

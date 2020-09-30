class VaccineType < ApplicationRecord
  has_many :vaccines, dependent: :destroy
  has_many :suggested_doses, dependent: :destroy
  has_many :campaigns, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end

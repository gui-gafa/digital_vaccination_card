class SuggestedVaccine < ApplicationRecord
  belongs_to :vaccine_type

  has_many :reccomended_doses, dependent: :destroy

  validates :vaccine_type, presence: true
end

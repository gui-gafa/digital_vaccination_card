class SuggestedDose < ApplicationRecord
  belongs_to :vaccine_type

  validates :month_age, presence: true, uniqueness: { scope: :vaccine_type }
  validates :vaccine_type, presence: true
end

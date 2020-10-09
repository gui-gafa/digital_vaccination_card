class SuggestedVaccine < ApplicationRecord
  belongs_to :vaccine_type

  has_many :reccomended_doses, dependent: :destroy

  validates :vaccine_type, presence: true, uniqueness: true

  include PgSearch::Model
  pg_search_scope :search_global_vaccine,
  against: [:description],
  associated_against: {
    vaccine_type: [:name, :prevents, :composition, :indication]
  },
  using: {
    tsearch: {prefix: true}
  }
end

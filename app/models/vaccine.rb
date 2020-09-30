class Vaccine < ApplicationRecord
  belongs_to :user
  belongs_to :vaccine_type
  has_many :doses

  include PgSearch::Model
  pg_search_scope :search_global_vacinne,
  against: [:user_comment],
  associated_against: {
    vaccine_type: [:name, :prevents, :composition, :indication]
  },
  using: {
    tsearch: {prefix: true}
  }
end

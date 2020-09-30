class VaccineType < ApplicationRecord
  has_many :vaccines
  has_many :suggested_doses
  has_many :campaigns

  include PgSearch::Model
  pg_search_scope :search_by_name_others,
  against: [:name, :prevents, :composition, :indication],
  using: {
    tsearch: {prefix: true}
  }
end

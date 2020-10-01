class VaccineType < ApplicationRecord
  has_many :vaccines, dependent: :destroy
  has_many :suggested_doses, dependent: :destroy
  has_many :campaigns, dependent: :destroy

  validates :name, presence: true, uniqueness: true

  include PgSearch::Model
  pg_search_scope :search_by_name_others,
  against: [:name, :prevents, :composition, :indication],
  using: {
    tsearch: {prefix: true}
  }
end

class ReccomendedDose < ApplicationRecord
  belongs_to :suggested_vaccine

  validates :month_age, presence: true, uniqueness: {scope: :suggested_vaccine}
end

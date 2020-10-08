class Dose < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :vaccine

  validates :date, presence: true, uniqueness: { scope: :vaccine }

  def health_prof_info
    user.present? ? user.first_name : "Não Autenticada."
  end
end

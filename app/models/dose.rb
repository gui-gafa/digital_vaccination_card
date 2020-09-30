class Dose < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :vaccine

  validates :date, presence: true, uniqueness: { scope: :vaccine }
end

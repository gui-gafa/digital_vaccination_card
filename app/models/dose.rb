class Dose < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :vaccine
end

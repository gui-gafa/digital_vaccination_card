class Vaccine < ApplicationRecord
  belongs_to :user
  belongs_to :vaccine_type
  has_many :doses
end

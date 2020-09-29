class Vaccine < ApplicationRecord
  belongs_to :user
  belongs_to :vaccine_type
end

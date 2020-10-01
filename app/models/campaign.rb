class Campaign < ApplicationRecord
  belongs_to :vaccine_type
  validates :start_date, presence: true
  validates :end_date, presence: true
end

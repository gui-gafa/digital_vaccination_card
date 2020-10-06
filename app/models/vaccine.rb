class Vaccine < ApplicationRecord
  belongs_to :user
  belongs_to :vaccine_type
  has_many :doses, dependent: :destroy
  has_many :users, through: :doses

  validates :vaccine_type, uniqueness: true
  include PgSearch::Model
  pg_search_scope :search_global_vacinne,
  against: [:user_comment],
  associated_against: {
    vaccine_type: [:name, :prevents, :composition, :indication]
  },
  using: {
    tsearch: {prefix: true}
  }

  def last_dose_date
    doses ? doses.order(:date).last.date.strftime("%d/%m/%Y") : "-"
  end

  def dose_count
    doses ? doses.count : 0
  end

  def valid_doses?
    users.count.positive? ? true : false
  end

  def comment
    user_comment ? user_comment : "Sem comentários por enqaunto."
  end
end

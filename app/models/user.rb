class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :vaccines
  has_many :doses
  validates :cpf, presence: true
  validate :cpf_invalid

  def cpf_invalid
    return errors.add(:cpf, "cpf inválido") unless CPF.valid?(cpf)
  end

  include PgSearch::Model
    pg_search_scope :search_user,
    against: [:cpf],
    using: {
      tsearch: {prefix: true}
    }

  def age_in_months
    birth_date ? ((Time.zone.today - birth_date) / 30.437).to_i : 0
  end

end

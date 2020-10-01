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
end

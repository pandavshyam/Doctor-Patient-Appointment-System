class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :confirmable

  # Validation
  validates :type, inclusion: { in: %w[Patient Doctor] }
  validates :first_name, length: { maximum: 20 }
  validates :email, length: { maximum: 50 }
  validates :last_name, length: { maximum: 20 }
end

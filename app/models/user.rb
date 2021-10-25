class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Name validation
  validates :name, presence: true
  validates :name, length: { in: 5..128 }

  # Password validation
  validates :password, format: { with: /\A(?=.*[a-z].*[a-z].*).+\z/, message: " must contain at least two lowercase characters" }
  validates :password, format: { with: /\A(?=.*[A-Z].*[A-Z].*).+\z/, message: " must contain at least two uppercase characters" }
  validates :password, format: { with: /\A(?=.*[0-9].*[0-9].*).+\z/, message: " must contain at least two digits" }
  validates :password, format: { with: /\A(?=.*[-!@#$%&*()_=+?\/|~^'{}"\[\]\\,.;:<>].*[-!@#$%&*()_=+?\/|~^'{}"\[\]\\,.;:<>].*).+\z/, message: " must contain at least two special characters" }
end

class User < ApplicationRecord
  has_many :feeds, dependent: :destroy

  validates :name, presence: true, length: { maximum: 30 }

  before_validation { email.downcase! }
  validates :email, uniqueness: true,
                    presence: true,
                    length: { maximum: 50 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }

  has_secure_password
  validates :password_digest, presence: true, length: { minimum: 6 }
end

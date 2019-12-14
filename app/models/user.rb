class User < ApplicationRecord
  devise :database_authenticatable, :recoverable, :registerable, :jwt_authenticatable, jwt_revocation_strategy: JwtBlacklist

  validates :email, uniqueness: true

  self.inheritance_column = :class_name

  validates :class_name, inclusion: { in: %w[Seller HomedayUser Realtor] }
end

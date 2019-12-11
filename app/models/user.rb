class User < ApplicationRecord
  devise :database_authenticatable, :recoverable, :registerable, :jwt_authenticatable, jwt_revocation_strategy: JwtBlacklist

  validates :email, uniqueness: true

  before_create :add_default_class_name

  def class_name
    read_attribute(:class_name) || 'Seller'
  end

  private

  def add_default_class_name
    self.class_name = class_name
  end
end

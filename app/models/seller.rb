class Seller < User
  has_many :properties, foreign_key: :owner_id
end

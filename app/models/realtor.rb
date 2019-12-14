class Realtor < User
  has_many :deals, foreign_key: :realtor_id
end

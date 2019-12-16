Fabricator(:seller) do
  email { Faker::Internet.email }
  password 12345678
  class_name 'Seller'
end

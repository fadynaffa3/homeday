Fabricator(:realtor) do
  email { Faker::Internet.email }
  password 12345678
  class_name 'Realtor'
end

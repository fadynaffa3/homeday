Fabricator(:user) do
  email { Faker::Internet.email }
  password 12345678
  class_name 'HomedayUser'
end

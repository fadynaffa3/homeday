Fabricator(:user) do
  email { Faker::Internet.email }
  password 12345678
end

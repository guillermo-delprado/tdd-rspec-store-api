FactoryBot.define do
  factory :owner do
    email { Faker::Internet.email }
    password_digest { Faker::Internet.password(min_length: 10, max_length: 20) }
    age { rand(38..99) }
  end
end

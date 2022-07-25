FactoryBot.define do
  factory :user do
    email { "guillermo@MyString" }
    age { 18 }
    password_digest { "MyString" }
    type { "test" }
  end
end

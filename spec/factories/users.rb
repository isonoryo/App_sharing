FactoryBot.define do
  factory :user do
    name { '１号' }
    email { 'test10@gmail.com' }
    school_id { 1 }
    password { '123456' }
    password_confirmation { '123456' }
  end
end

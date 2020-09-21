FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials(number: 2) }
    email                 { Faker::Internet.free_email }
    password              { Faker::Internet.password(min_length: 6) }
    password_confirmation { password }
    family_name           {"山田"}
    first_name            {"太郎"}
    family_kana           {"ヤマダ"}
    first_kana            {"タロウ"}
    birthday              {"2020-01-01"}
  end
end

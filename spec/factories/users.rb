FactoryBot.define do
  factory :user do
    id                    {1}
    nickname              {"sasaki"}
    password              {"a0000000"}
    password_confirmation {"a0000000"}
    sequence(:email)      {Faker::Internet.email}
    family_name           {"tanaka"}
    first_name            {"taro"}
    family_kana           {"タナカ"}
    first_kana            {"タロウ"}
    birthday              {"2018-01-04"}
    postal_code           {000-0000}
    prefectures           {1}
    city                  {"tokyo"}
    house_number          {"1-1-1"}
    building_name         {"aaa"}
    phone_number          {"000-0000-0000"}
    uid                   {"1234567"}
    provider              {"facebook"}
  end
end
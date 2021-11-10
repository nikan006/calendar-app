FactoryBot.define do
  factory :user do
    name                  {'test'}
    email                 {'abc@abc.com'}
    password              {'000000'}
    password_confirmation {password}
  end
end
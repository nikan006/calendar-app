FactoryBot.define do
  factory :event do
    start_time    {"00:00"}
    end_time      {"00:20"}
    title         {"test"}
    text          {"test2"}
    association :user
  end
end

FactoryBot.define do
  factory :address do
    dns { FFaker::Internet.ip_v4_address }
  end
end
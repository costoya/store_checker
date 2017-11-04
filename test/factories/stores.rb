require 'faker'

FactoryBot.define do
  factory :store do
    name { Faker::Company.name }
    url { Faker::Internet.url("#{name}.com") }
  end
end
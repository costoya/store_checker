require 'faker'

FactoryBot.define do
  factory :store_has_article do
    url { Faker::Internet.url }
    price { Faker::Number.between(1,100) }
    store
    article
  end
end
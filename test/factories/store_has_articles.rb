require 'faker'

FactoryBot.define do
  factory :store_has_article do
    url { Faker::Internet.url }
    store
    article
  end
end

require 'faker'

FactoryBot.define do
  factory :buyed_articles_on_store do
    quantity { Faker::Number.between(1, 10) }
    buying
    store_has_article
  end
end

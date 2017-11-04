require 'faker'

FactoryBot.define do
  factory :article do
    name { Faker::Commerce.product_name }
  end
end

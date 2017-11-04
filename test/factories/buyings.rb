FactoryBot.define do
  factory :buying do
    buying_date { Faker::Date.between(1.year.ago, Date.today) }
  end
end

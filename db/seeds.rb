require 'factory_bot_rails'

#puts 'Creating Stores'
#FactoryBot.create_list(:store, 5)

#puts 'Creating Articles'
#FactoryBot.create_list(:article, 50)

#puts 'Creating buyings'
#FactoryBot.create_list(:buying, 10)

puts 'Creating Store_has_articles'
5.times.each do |i|
  store = FactoryBot.create(:store)
  FactoryBot.create_list(:store_has_article, 10, store: store)
end

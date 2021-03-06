require 'factory_bot_rails'

puts 'Creating Store_has_articles'
5.times.each do |i|
  buying = FactoryBot.create(:buying)
  store = FactoryBot.create(:store)
  10.times.each do |j|
    store_has_articles = FactoryBot.create(:store_has_article, store: store)
    FactoryBot.create(:buyed_articles_on_store, buying: buying, store_has_article: store_has_articles)
  end
end

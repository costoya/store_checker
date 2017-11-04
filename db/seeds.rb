require 'factory_bot_rails'

puts 'Creating Stores'
FactoryBot.create_list(:store, 5)

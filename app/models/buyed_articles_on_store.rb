class BuyedArticlesOnStore < ApplicationRecord
  belongs_to :buying
  belongs_to :store_has_article
end

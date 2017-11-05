class StoreHasArticle < ApplicationRecord
  belongs_to :store
  belongs_to :article
  has_many :store_has_article
end

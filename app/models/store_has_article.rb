class StoreHasArticle < ApplicationRecord
  belongs_to :store
  belongs_to :article
end

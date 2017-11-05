class CreateStoreHasArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :store_has_articles do |t|
      t.string :url
      t.references :store, foreign_key: true
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end

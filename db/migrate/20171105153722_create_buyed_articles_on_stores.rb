class CreateBuyedArticlesOnStores < ActiveRecord::Migration[5.1]
  def change
    create_table :buyed_articles_on_stores do |t|
      t.integer :quantity
      t.references :buying, foreign_key: true
      t.references :store_has_article, foreign_key: true

      t.timestamps
    end
  end
end

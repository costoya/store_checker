class CreateBuyings < ActiveRecord::Migration[5.1]
  def change
    create_table :buyings do |t|
      t.date :buying_date

      t.timestamps
    end
  end
end

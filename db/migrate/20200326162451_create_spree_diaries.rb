class CreateSpreeDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :spree_diaries do |t|
      t.string :title
      t.text :body
      t.integer :order_id

      t.timestamps
    end
  end
end

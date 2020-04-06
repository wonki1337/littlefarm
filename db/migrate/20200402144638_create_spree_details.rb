class CreateSpreeDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :spree_details do |t|
      t.string :image
      t.integer :product_id

      t.timestamps
    end
  end
end

class AddImageToSpreeProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :spree_products, :image, :string
  end
end

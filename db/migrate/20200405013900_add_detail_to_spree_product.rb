class AddDetailToSpreeProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :spree_products, :detail, :string
  end
end

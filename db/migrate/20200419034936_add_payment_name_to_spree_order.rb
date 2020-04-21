class AddPaymentNameToSpreeOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :spree_orders, :payment_name, :text
  end
end

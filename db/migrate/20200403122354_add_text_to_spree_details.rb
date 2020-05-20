class AddTextToSpreeDetails < ActiveRecord::Migration[6.0]
  def change
    add_column :spree_details, :body, :text
  end
end

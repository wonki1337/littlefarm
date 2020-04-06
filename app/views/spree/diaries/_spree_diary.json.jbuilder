json.extract! spree_diary, :id, :title, :body, :order_id, :created_at, :updated_at
json.url spree_diary_url(spree_diary, format: :json)

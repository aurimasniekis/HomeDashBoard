json.array!(@payment_categories) do |payment_category|
  json.extract! payment_category, :title, :description
  json.url payment_category_url(payment_category, format: :json)
end
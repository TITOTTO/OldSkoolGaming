json.extract! article, :id, :title, :content, :price, :created_at, :updated_at
json.url article_url(article, format: :json)

json.extract! blog, :id, :name, :title, :content
json.url blog_url(blog, format: :json)

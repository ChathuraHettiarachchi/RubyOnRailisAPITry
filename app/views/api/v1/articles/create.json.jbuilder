json.status @reply[:status]
json.message @reply[:message]

article = @reply[:content]

unless article.nil?
  json.content do
    json.id article.id
    json.title article.title
    json.body article.body
    json.created_at article.created_at
  end
end
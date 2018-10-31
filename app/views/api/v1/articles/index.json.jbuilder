json.status @reply[:status]
json.message @reply[:message]

articles = @reply[:content]

json.content articles do |article|
  json.title article.title
  json.body article.body
end

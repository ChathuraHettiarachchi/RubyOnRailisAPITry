json.status @reply[:status]
json.message @reply[:message]

article = @reply[:content]

unless article.nil?
  json.content do
    json.title article.title
    json.body article.body
  end
end
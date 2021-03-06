class Api::V1::ArticlesController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    articles = Article.order('created_at DESC')
    response = {status: 1, message: 'Articles found', content: articles}

    @reply = response
  end

  def show
    begin
      article = Article.find(params[:id])
      response = {status: 1, message: 'Article found', content: article}
    rescue StandardError => e
      response = {status: 0, message: e, content: nil}
    end

    @reply = response
  end

  def create
    if !article_params.nil?
      if (Article.find_by title: article_params[:title]).nil?

      article = Article.new(article_params)
      response = if article.save
                   {status: 1, message: 'Article saved successfully', content: article}
                 else
                   {status: 0, message: 'Article failed to save', content: article.errors}
                 end
      else
        response = {status: 0, message: 'Article already in the database', content: nil}
      end
    else
      response = {status: 0, message: 'Error', content: nil}
    end
    @reply = response
  end

  private

  def article_params
    params.permit(:title, :body)
  end
end
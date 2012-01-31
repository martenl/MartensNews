class ArticleController < ApplicationController
  def index
    @offset = params[:offset].to_i * 10
    @articles = Article.order("created_at DESC").offset(@offset).limit(9) 
  end

  def add
    @article = Article.new
  end

  def addWork
    @article = Article.new(params[:article])
    if @article.save
      redirect_to showArticle_url(:id => @article.id)
    else
      redirect_to index_url #:action => :notFound
    end
  end
  
  def show
    @article = Article.find(params[:id])
    @comment = Comment.new
    @comments = Comment.where("articleID = ?",params[:id])
  end

end

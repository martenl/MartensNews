module ApplicationHelper
  def linkOrShow(article)
    if article.link != ""
      article.link
    else
      showArticle_url(article.id)
    end
  end
  
  
end

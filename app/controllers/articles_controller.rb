class ArticlesController < ApplicationController
  def show
    # use Article.find to find the article we are interested in. Passing [:id] parameter to get the :id from the request
    # An instance variable @article is referenced to the article object
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    # render method here is taking a very simple hash with a key of :plain and value of params[:article].inspect
    # render plain: params[:article].inspect

    # initialize an instance of article model
    @article = Article.new(article_params)

    # save the model to database, redirect user to show action
    @article.save
    redirect_to @article
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end

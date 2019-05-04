class ArticlesController < ApplicationController
  # A frequent practice is to place the standard CRUD actions in each controller in the following order: index, show, new, edit, create, update and destroy.
  def index
    @articles = Article.all
  end

  def show
    # use Article.find to find the article we are interested in. Passing [:id] parameter to get the :id from the request
    # An instance variable @article is referenced to the article object
    @article = Article.find(params[:id])
  end

  def new
    # 5.10 render a new instance
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    # render method here is taking a very simple hash with a key of :plain and value of params[:article].inspect
    # render plain: params[:article].inspect

    # initialize an instance of article model
    @article = Article.new(article_params)

    # save the model to database, redirect user to show action
    if @article.save
      redirect_to @article
    else
      # 5.10 if save return false because of validation fail, show the form back to user and render a new instance
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end

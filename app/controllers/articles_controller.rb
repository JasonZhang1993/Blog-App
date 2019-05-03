class ArticlesController < ApplicationController
  def new
  end

  def create
    # render method here is taking a very simple hash with a key of :plain and value of params[:article].inspect
    render plain: params[:article].inspect
  end
end

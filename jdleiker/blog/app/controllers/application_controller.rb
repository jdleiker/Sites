class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def new
  end

  def create
  	@article = Article.new(article_params)
 
  	@article.save
  	redirect_to @article
  end

  def show
  	@article = Article.find(params[:id])
  end

  def index
  	@articles = Article.all
  end


private
  def article_params
    params.require(:article).permit(:title, :text)
  end

end

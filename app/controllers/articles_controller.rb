class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :require_user, except: [:show, :index]
  before_action :require_Same_user, only: [:edit, :update, :destroy]
  def show

  end
  
  def index
    @article = Article.paginate(page:params[:page], per_page: 5)
  end
  
  def new
    @article = Article.new
  end
  
  def edit
       
  end

  

 def create
    @article = Article.new(articles_params)
    @article.user = current_user
      if @article.save
        flash[:notice]  = "Article was created successully"
        redirect_to @article
      else
        render 'new'
      end
    end
  def update
    
    if @article.update(articles_params)
      flash[:notice]  = "Article was updated successully"
      redirect_to @article
    else
      render 'edit'
    end
   
  end
 
  def destroy
     @article.destroy!
     flash[:notice]  = "Article was deleted successully"
     redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def articles_params
    params.require(:article).permit(:title, :description)
  end 

  def require_Same_user
    if current_user != @article.user && !current_user.admin?
      flash[:alert] = "You are not authorized to view this page"
      redirect_to @article
    end
  end
end
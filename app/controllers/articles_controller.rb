class ArticlesController < ApplicationController
    def show
        @article = Article.find(params[:id])
    end
    def index
        @articles = Article.all
    end
    def new
        @article = Article.new
    end
    def create
        @article = Article.new(params.require(:article).permit(:title,:description))
        if @article.save
            flash[:notice] = 'Article was created successfully.'
            redirect_to show_article_path(@article)
        else
            render 'new'
        end
    end
    def edit
        @article = Article.find(params[:id])
    
    end
    def update
        @article = Article.find(params[:id])
       if  @article.update(params.require(:article).permit(:title,:description))
        flash[:notice] = 'Article was created successfully.'
        redirect_to show_article_path(@article)
        else
            render 'edit'
       end
    end
    def destroy
        @article = Article.find(params[:id])
        flash[:alert] = 'Warning your item will be deleted'
        @article.destroy
        redirect_to articles_path(@article)
    end
end

class Articles1Controller < ApplicationController
    before_action :set_article, only: [:show, :edit, :update, :destroy]
    def show
    end
    def index
        @articles = Articles1.all()
    end
    def edit
    end
    def new
        @article = Articles1.new
    end
    def create
       @article = Articles1.new(params.require(:article).permit(:title,:description))
       @article.user = User.first
       if @article.save
        flash[:notice] = "Article was successfully created"
        redirect_to @article
       else
        render 'new'
       end 
    end
    def update
        if @article.update(white_list)
          flash[:notice] = "Article was successfully updated"
          redirect_to @article
        else
          render 'edit'  
        end
    end
    def destroy
        @article.destroy
        redirect_to articles1_index_path
    end
    private
    def set_article
        @article = Articles1.find(params[:id])
    end
    def white_list
        params.require(:articles1).permit(:title,:description)
    end 
end
class Articles1Controller < ApplicationController
    def show
        @article = Articles1.find(params[:id])
    end
    def index
        @articles = Articles1.all()
    end
    def edit
        @article = Articles1.find(params[:id])
    end
    def new
        @article = Articles1.new
    end
    def create
       @article = Articles1.new(params.require(:article).permit(:title,:description))
       if @article.save
        flash[:notice] = "Article was successfully created"
        redirect_to @article
       else
        render 'new'
       end 
    end
    def update
        @article = Articles1.find(params[:id])
        if @article.update(params.require(:articles1).permit(:title,:description))
          flash[:notice] = "Article was successfully updated"
          redirect_to @article
        else
          render 'edit'  
        end
    end
    def destroy
        @article = Articles1.find(params[:id])
        @article.destroy
        redirect_to articles1_index_path
    end
end
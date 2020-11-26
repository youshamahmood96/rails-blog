class Articles1Controller < ApplicationController
    def show
        @article = Articles1.find(params[:id])
    end
    def index
        @articles = Articles1.all()
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
end
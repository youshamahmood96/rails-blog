class Articles1Controller < ApplicationController
    def show
        @article = Articles1.find(params[:id])
    end
end
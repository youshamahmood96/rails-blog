class UsersController < ApplicationController
    def new
        @user = User.new
    end
    def create
        @user = User.new(user_params)
        if @user.save
            flash[:notice] ="Welcome to the blog, #{@user.username} ! You have successfully signed up"
            redirect_to articles1_index_path
        else
            render 'new'
        end
    end
    private
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end
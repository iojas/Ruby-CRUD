class UsersController < ApplicationController
    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
      def user_params
        params.require(:user).permit(:name, :bio, :age)
      end

        @u = User.new(user_params)
        #byebug
        if @u.save
            redirect_to users_path
        else
            render "new"
        end


    end

    def edit
      @user = User.find(params[:id])
    end

    def update
      def user_params
        params.require(:user).permit(:name, :bio, :age)
      end
      @user = User.find(params[:id])
      if @user.update_attributes(user_params)
        redirect_to users_path
      else
        render "edit"
      end
    end
end

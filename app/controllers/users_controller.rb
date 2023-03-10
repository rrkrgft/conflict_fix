class UsersController < ApplicationController
  class UsersController < ApplicationController
    before_action :set_user, only: %i[ show ]
  
    def show
      end
    end
  
    def new
        @user = User.new
    end
    
    def create
      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to user_path(@user.id), notice: "ユーザー登録が完了しました"
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    private
      def set_user
        @user = User.find(params[:id])
      end
  
      def user_params
        params.fetch(:user).permit(:name, :email, :password,
                                  :password_confirmation)
      end
  end
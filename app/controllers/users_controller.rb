class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def profile
        render json: { user: ProfileSerializer.new(current_user)}, status: :accepted
    end

    def show
        user = User.find_by(id: params[:id])
        render json: {friend: UserSerializer.new(user)}, status: :accepted
    end

    def index
        @users = User.all
        render json: @users, each_serializer: UserSerializer
    end
    
    def create
        @user = User.create(user_params)
        if @user.valid?
            @token = encode_token({user_id: @user.id})
            render json: { user: ProfileSerializer.new(@user), jwt: @token }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end 
    end

    def update
        @user = User.find_by(id: params[:id])
        @user.update(user_params)
        render json: { user: ProfileSerializer.new(@user)}, status: :updated
    end

    def destroy
        @user = User.find_by(id: params[:id])
        @user.destroy
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :name, :email, :img_url, :member_since)
    end

end

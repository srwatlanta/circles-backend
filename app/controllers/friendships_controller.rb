class FriendshipsController < ApplicationController
    def create
        @friendship = Friendship.create(invite_params)
        if @friendship.valid?
            render json: { user: ProfileSerializer.new(current_user) }, status: :created
        else
            render json: { error: 'failed to create friendship' }, status: :not_acceptable
        end 
    end

    def delete
        @friendship = Friendship.find_by(id: params[:id])
        @friendship.destroy
    end

    private

    def friendship_params
        params.require(:friendship).permit(:user_id, :friend_id)
    end
end

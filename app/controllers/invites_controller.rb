class InvitesController < ApplicationController
    def create
        @invite = Invite.create(invite_params)
        if @invite.valid?
            @invite.status = 'invited'
            render json: { user: ProfileSerializer.new(current_user) }, status: :created
        else
            render json: { error: 'failed to create invite' }, status: :not_acceptable
        end 
    end

    private

    def invite_params
        params.require(:invite).permit(:user_id, :circle_id, :event_id)
    end

end

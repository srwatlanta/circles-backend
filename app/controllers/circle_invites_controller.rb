class CircleInvitesController < ApplicationController
    def create
        @circle_invite = CircleInvite.create(circle_invite_params)
        @circle = Circle.find_by(id: @circle_invite.circle_id)
        if @circle_invite.valid?
            render json: { circle: CircleSerializer.new(@circle) }, status: :created
        else
            render json: { error: 'failed to create circle_invite' }, status: :not_acceptable
        end 
    end

    def destroy
        @circle_invite = CircleInvite.find_by(id: params[:id])
        @circle_invite.destroy
    end

    private

    def circle_invite_params
        params.require(:circle_invite).permit(:user_id, :circle_id)
    end
end

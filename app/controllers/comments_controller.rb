class CommentsController < ApplicationController

    def create
        comment = Comment.create(comment_params)
        event = Event.find(params[:comment][:event_id])
        if comment.valid?
            render json: { event: EventSerializer.new(event) }, status: :created
        else
            render json: { error: 'failed to create comment' }, status: :not_acceptable
        end
    end

    def destroy
        @comment = Comment.find_by(id: params[:id])
        @comment.destroy
    end

    private
    
    def comment_params
        params.require(:comment).permit(:user_id, :event_id, :comment)
    end
end

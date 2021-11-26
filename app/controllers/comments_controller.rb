class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to root_path
  end

  def show
    @event = Event.find(params[:id])
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, event_id: params[:event_id])
  end

end

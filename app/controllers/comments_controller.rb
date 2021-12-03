class CommentsController < ApplicationController
  
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)
    redirect_to event_comment_path
  end

  def show
    @event = Event.find(params[:id])
    @comment = Comment.find(params[:event_id])
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(event_id: params[:event_id])
  end

end

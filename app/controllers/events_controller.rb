class EventsController < ApplicationController
  before_action :authenticate_user!

  def index
    @events = Event.includes(:user)
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_parameter)
    @event.user_id = current_user.id
    if @event.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def show
    @event = Event.find(params[:id])
    @comment = Comment.new
    @comments = @event.comments.includes(:user)
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_parameter)
      redirect_to events_path
    else
      render "edit"
    end
  end

  private

  def event_parameter
    params.require(:event).permit(:title, :text, :start_time, :end_time).merge(user_id: current_user.id)
  end

end

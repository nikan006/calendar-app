class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    Event.create(event_parameter)
    redirect_to root_path
  end

  def show
    @event = Event.find(params[:id])
  end

  def event_parameter
    params.require(:event).permit(:title, :text, :start_time, :end_time)
  end

end

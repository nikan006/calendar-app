class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create(event_parameter)
    if @event.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def show
    @event = Event.find(params[:id])
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

  def event_parameter
    params.require(:event).permit(:title, :text, :start_time, :end_time)
  end

end

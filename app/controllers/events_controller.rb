class EventsController < ApplicationController
  skip_before_action :authorized

  def index
    @events = Event.all
    render json: @events, each_serializer: EventSerializer
  end

  def create
    @event = Event.create(event_params)
    if @event.valid?
      render json: { event: EventSerializer.new(@event)}, status: :created
    else
      render json: { error: "failed to create event" }, status: :not_acceptable
    end
  end

  def update
    @event = Event.find_by(id: params[:id])
    @event.update(event_params)
    render json: { event: EventSerializer.new(@event)}, status: :updated
  end

  def destroy
    @event = Event.find_by(id: params[:id])
    @event.destroy
  end

  private

  def event_params
    params.require(:event).permit(:location, :name, :date, :start_time, :price, :img_url)
  end
end

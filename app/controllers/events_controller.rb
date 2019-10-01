class EventsController < ApplicationController
  skip_before_action :authorized

  def index
    @events = Event.all
    render json: @events, each_serializer: EventSerializer
  end

  def show
    @event = Event.find_by(id: params[:id])
    render json: { event: EventSerializer.new(@event)}, status: :accepted
  end

  def create
    event = Event.create(event_params)
    array = params[:event][:circle_ids]
    circles = []
    if array.length > 1
      array.each do |circle|
        x = Circle.find_by(id: circle)
        circles.push(x)
      end
    else
      circles = array
    end
    users = []
    circles.each do |circle|
      circle.users.each do |user|
        unless users.include?(user.id)
          users << user.id
          Invite.create(user_id: user.id, circle_id: circle.id, event_id: event.id, status: "Invited")
        end
      end
    end
    if event.valid?
      render json: { event: EventSerializer.new(event)}, status: :created
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
    event = Event.find_by(id: params[:id])

    invites = Invite.all.select do |invite|
      invite.id == event.id
    end

    invites.each do |invite|
      invite.destroy
    end

    event.destroy
  end

  private

  def event_params
    params.require(:event).permit(:user_id, :location, :name, :date, :start_time, :price, :img_url, :circle_ids)
  end
end

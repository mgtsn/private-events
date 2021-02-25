class AttendingsController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    attending = Attending.new(event_id: event.id)
    attending.save
  end
end

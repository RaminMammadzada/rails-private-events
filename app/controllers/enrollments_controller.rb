class EnrollmentsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  
  def create
    @event = Event.find(params[:event_id])
    @event.attendees << current_user

    if @event.save 
      redirect_to user_path(current_user)
      flash[:alert] = 'Added as Attendee'
    else
      redirect_to @event
    end
  end

  def destroy; end
end
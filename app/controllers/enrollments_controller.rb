class EnrollmentsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update]
  
  def create
    @event = Event.find(params[:event_id])
    if !@event.attendees.include? current_user
      @event.attendees << current_user
    else
      flash[:alert] = "You are already registered!"
    end

    if @event.save
      redirect_to events_path
      flash[:alert] = 'Added as Attendee'
    end
  end

  def destroy
    @event =  Event.find(params[:event_id])

    @user = params[:attendee_id] == nil? ? current_user.id : User.find(params[:attendee_id])


    if @user.attended_events.include? @event
      @user.attended_events.destroy(@event.id)
    end



    redirect_to events_path
  end


end
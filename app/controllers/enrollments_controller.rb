class EnrollmentsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index

  end

  def def new
    @enrollment = Enrollment.new
  end
  
  def create
    @enrollment = current_user.attended_events.build
  end
  
end
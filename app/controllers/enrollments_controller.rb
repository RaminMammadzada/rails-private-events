class EnrollmentsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
  end

  def def new
    @enrollment = Enrollment.new
  end
  
  def create
    @enrollment = Enrollment.new
    @enrollment.save
  end
  
end
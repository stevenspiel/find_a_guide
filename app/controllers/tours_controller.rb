class ToursController < ApplicationController
  def show
    @ambassador = User.first
    @selected_tour = Tour.find(params[:id])
  end

  def new
    @ambassador = current_user
    @specialties = Specialty.all
  end

  def create
  end

  def index
    @ambassador = current_user
    @tours = @ambassador.ambassador_meetups
  end
end
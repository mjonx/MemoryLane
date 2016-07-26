class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find_by(id: params[:id])
  end

  def new
    @trip = Trip.new
    render 'new'
  end

  def create
    @trip = Trip.new(title: params[:trip][:title], destination: params[:trip][:destination], user_id: 1)
    @trip.save
    if @trip.save
      redirect_to '/trips'
    else
      render action: 'new'
    end
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])
    if @trip.update(title: params[:trip][:title], destination: params[:trip][:destination], user_id: 1)
      redirect_to '/trips'
    else
      render action: 'index'
    end
  end

  def delete
    @trip = Trip.find(params[:id])
    @trip.destroy
    if @trip.destroy
      redirect_to '/trips'
    else
      render action: 'index'
    end
  end

  private

  def trip_params
    [:title, :destination]
  end
end

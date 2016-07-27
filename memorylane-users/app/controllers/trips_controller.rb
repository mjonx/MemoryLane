class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find_by(id: params[:id])
  end

  def new
    @trip = current_user.trips.build
    render 'new'
  end

  def create
    @trip = current_user.trips.build(trip_params)
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
    if @trip.update(trip_params)
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
    params.require(:trip).permit(:title, :destination, :user_id)
  end
end

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

  def edit
  end


  def create
    @trip = Trip.new(title: params[:trip][:title], destination: params[:trip][:destination], user_id: 1)
    @trip.save
    if @trip.save
      redirect_to '/trips', notice: "#{category} was successfully created."
    else
      render action: 'new'
    end
  end


  def update
  end

  def destroy
    @trip = Trip.find(params[:id])

      @trip.destroy
  end

  private

  def set_category
    @category = category
  end

  def category
    Memory.categories.include?(params[:type]) ? params[:type] : "Memory"
  end

  def memory_params
    params.require(category.underscore.to_sym).permit(send("#{category.underscore}_params"))
  end

  def trip_params
    [:title, :destination]
  end

  def concert_params
    [:title, :venue]
  end

  def achievement_params
    [:title, :date]
  end





end

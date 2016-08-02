class ConcertsController < ApplicationController
  def index
    @concerts = Concert.all
  end

  def show
    @concert = Concert.find_by(id: params[:id])
  end

  def new
    @concert = current_user.concerts.build
    render 'new'
  end

  def create
    @concert = current_user.concerts.build(concert_params)
    @concert.save
    if @concert.save
      redirect_to '/concerts'
    else
      render action: 'new'
    end
  end

  def edit
    @concert = Concert.find_by(id: params[:id])
  end

  def update
    @concert = Concert.find(params[:id])
    if @concert.update(concert_params)
      redirect_to '/concerts'
    else
      render action: 'index'
    end
  end

  def delete
    @concert = Concert.find(params[:id])
    @concert.destroy
    if @concert.destroy
      redirect_to '/concert'
    else
      render action: 'index'
    end
  end

  private

  def concert_params
    params.require(:concert).permit(:title, :artist, :location, :date, :venue, :friends, :notes, :memoryphoto, :user_id)
  end

end

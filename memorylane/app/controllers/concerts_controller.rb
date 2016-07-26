class ConcertsController < ApplicationController
  def index
    @concerts = Concert.all
  end

  def show
    @concert = Concert.find_by(id: params[:id])
  end

  def new
    @concert = Concert.new
    render 'new'
  end

  def create
    @concert = Concert.new(title: params[:concert][:title], venue: params[:concert][:venue], user_id: 1)
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
    if @concert.update(title: params[:concert][:title], venue: params[:concert][:venue], user_id: 1)
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
    [:title, :venue]
  end
end

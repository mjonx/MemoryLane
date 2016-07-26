class AchievementsController < ApplicationController
  def index
    @achievements = Achievement.all
  end

  def show
    @achievement = Achievement.find_by(id: params[:id])
  end

  def new
    @achievement = Achievement.new
    render 'new'
  end

  def create
    @achievement = Achievement.new(title: params[:achievement][:title], date: params[:achievement][:date], user_id: 1)
    @achievement.save
    if @achievement.save
      redirect_to '/achievements'
    else
      render action: 'new'
    end
  end

  def edit
    @achievement = Achievement.find(params[:id])
  end

  def update
    @achievement = Achievement.find(params[:id])
    if @achievement.update(title: params[:achievement][:title], date: params[:achievement][:date], user_id: 1)
      redirect_to '/achievements'
    else
      render action: 'index'
    end
  end

  def delete
    @achievement = Achievement.find(params[:id])
    @achievement.destroy
    if @achievement.destroy
      redirect_to '/achievements'
    else
      render action: 'index'
    end
  end
end

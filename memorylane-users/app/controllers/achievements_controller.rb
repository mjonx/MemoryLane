class AchievementsController < ApplicationController
  def index
    @achievements = Achievement.all
  end

  def show
    @achievement = Achievement.find_by(id: params[:id])
  end

  def new
    @achievement = current_user.achievements.build
    render 'new'
  end

  def create
    @achievement = current_user.achievements.build(achievement_params)
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
    if @achievement.update(achievement_params)
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

  private

  def achievement_params
    params.require(:achievement).permit(:title, :date, :user_id)
  end

end

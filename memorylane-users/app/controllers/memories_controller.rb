class MemoriesController < ApplicationController
  def index
    @memories = current_user.memories.order("date desc")
  end

  def show
  end

  def new
  end

  def edit
  end

  def create

  end

  def update

  end

  def destroy

  end

end

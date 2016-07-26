class MemoriesController < ApplicationController
  before_action :set_memory, only: [:show, :edit, :update, :destroy]
  before_action :set_category

  def index
    @memories = category_class.all
  end

  def show
  end

  def new
    @memory = category_class.new
  end

  def edit
  end

  def create
    @memory = Memory.new(memory_params)
    if @memory.save
      flash[:notice] = "Trip successfully created"
      redirect_to @memory, notice: "#{category} was successfully created."
    else
      render action: 'new'
    end
  end

  def update
    if @memory.update(memory_params)
      redirect_to @memory, notice: "#{category} was succesfully updated."
    else
      render action: 'edit'
    end
  end

  def destroy
    @memory.destroy
    redirect_to memories_url
  end

  private

  def set_category
    @category = category
  end

  def category
    Memory.categories.include?(params[:type]) ? params[:type] : "Memory"
  end

  def category_class
    category.constantize
  end

  def set_memory
    @memory = category_class.find(params[:id])
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

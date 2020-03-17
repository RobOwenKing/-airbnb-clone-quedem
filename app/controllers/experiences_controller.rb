class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    if @experience.save
      redirect_to experience_path(@experience)
    else
      render :new
    end
  end

  def show
    @experience = experience.find(params[:id])
  end

  private

  def experience_params
    params.require(:experience).permit(:name, :description, :location, :date_choices, :photo, :max_participants, :price)
  end
end

class ExperiencesController < ApplicationController
  def index
    @experiences = policy_scope(Experience)
  end

  def new
    @experience = Experience.new
    authorize @experience
  end

  def create
    @experience = Experience.new(experience_params)
    authorize @experience
    if @experience.save
      redirect_to experience_path(@experience)
    else
      render :new
    end
  end

  def show
    @experience = experience.find(params[:id])
    authorize @experience
  end

  private

  def experience_params
    params.require(:experience).permit(:name, :description, :location, :date_choices, :photo, :max_participants, :price)
  end
end

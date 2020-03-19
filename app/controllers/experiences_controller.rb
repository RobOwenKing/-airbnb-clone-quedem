class ExperiencesController < ApplicationController
  def index

    @experiences = policy_scope(Experience)

    if params[:location_query].present?
      @experiences = Experience.geocoded.near(params[:location_query], 50) #returns experiences with coordinates
    else
      @experiences = Experience.geocoded
    end

    if params[:search_query].present?
      @experiences = @experiences.where("name ILIKE ?", "%#{params[:search_query]}%")
    end

  @markers = @experiences.map do |experience|
    {
      lat: experience.latitude,
      lng: experience.longitude
    }
  end
end

def new
  @experience = Experience.new
  authorize @experience
end

def create
  @experience = Experience.new(experience_params)
  if authorize @experience
    @experience.user = current_user
  else
    render :home
  end
  if @experience.save
    redirect_to experience_path(@experience)
  else
    render :new
  end
end

def show
  @experience = Experience.find(params[:id])
  authorize @experience
end

private

def experience_params
  params.require(:experience).permit(:name, :description, :location, :date_choices, :photo, :max_participants, :price)
end
end

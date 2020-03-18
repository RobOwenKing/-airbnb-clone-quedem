class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @experiences = Experience.all.select {|exp| exp.photo.attached?}.sample(6)
  end
end

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @photos = Experience.select(:photo)
  end
end

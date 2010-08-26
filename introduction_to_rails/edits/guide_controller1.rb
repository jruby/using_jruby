class GuideController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
end

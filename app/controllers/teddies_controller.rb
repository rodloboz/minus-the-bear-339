class TeddiesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @teddies = Teddy.all
  end

  def show
    @teddy = Teddy.find(params[:id])
  end
end

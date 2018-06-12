class HomeController < ApplicationController
  def index
    @events = Evenement.page(params[:page]).per(5)
  end
end

class HomeController < ApplicationController
  def index
    @logs = Log.find_of_month(params[:id])
  end
end

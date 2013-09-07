class HomeController < ApplicationController
  def index
    @logs = Log.find_of_month(params[:id])
  end

  def search
    @logs = Log.where('message like ?', "%"+params[:q]+"%")
    render :action => :index
  end
end

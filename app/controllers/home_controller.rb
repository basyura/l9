class HomeController < ApplicationController
  def index
    @logs = Log.find_of_month(params[:id], params[:page])
  end

  def search
    @logs = Log.search_message(params[:q])
    render :action => :index
  end
end

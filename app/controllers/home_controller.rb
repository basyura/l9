class HomeController < ApplicationController
  def index
    @logs = Log.find_of_month(Time.now)
  end
end

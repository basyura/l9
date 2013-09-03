class HomeController < ApplicationController
  def index
    @logs = Log.all
  end
end

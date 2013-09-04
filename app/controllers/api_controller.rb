class ApiController < ApplicationController
  protect_from_forgery with: :null_session
  def create
    puts params[:username]
    puts params[:date]
    puts params[:message]

    render :json => 'ok'
  end
end

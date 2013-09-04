class ApiController < ApplicationController
  protect_from_forgery with: :null_session
  def create
    puts params[:username]
    puts params[:date]
    puts params[:message]

    Log.new({
      :username => params[:username],
      :date     => Time.parse(params[:date]),
      :message  => params[:message]
    }).save

    render :json => 'ok'
  end
end

class SessionsController < ApplicationController
  def new
      # nothing to do here!
  end

  def create
    if !params[:username].blank?
      session[:username] = params[:username]
      redirect_to '/'
    else
      redirect_to '/login'

  end
  def destroy
    if !session[:username].blank?
      session.delete :username
    end
  end


end

class SessionsController < ApplicationController
  def new
      # nothing to do here!
  end

  def create
    if !session[:username].blank?
      redirect_to '/'

    if !params[:username].blank?
      session[:username] = params[:username]
      redirect_to '/'
    else
      redirect_to '/login'
    end

  end
  def destroy
    if !session[:username].blank?
      session.delete :username
    end
  end


end

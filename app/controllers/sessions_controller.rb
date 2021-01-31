class SessionsController < ApplicationController
  def new
      # nothing to do here!
  end

  def create
      session[:username] = params[:username]
      redirect_to '/'
  end
  def destroy
    if !session[:username].blank?
      session.delete :username
    end
  end


end

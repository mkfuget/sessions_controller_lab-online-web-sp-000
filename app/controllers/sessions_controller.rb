class SessionsController < ApplicationController
  def new
      # nothing to do here!
  end

  def create
    if !params[:username]
      session[:username] = params[:username]
    end
    redirect_to '/'

  end
  def destroy
    if !session[:username].blank?
      session.delete :username
    end
  end


end

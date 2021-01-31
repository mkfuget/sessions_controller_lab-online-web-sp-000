class SessionsController < ApplicationController
  def new
      # nothing to do here!
  end

  def create
    puts session[:username]
    if !session[:username].blank?
      redirect_to '/'
    elsif !params[:username].blank?
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

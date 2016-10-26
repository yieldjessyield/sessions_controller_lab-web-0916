class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:create]


  def new
  end

  def create
    if params[:name] == "" || params[:name] == nil
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end

  end

  def destroy
    session[:name] = nil
    redirect_to root_path
  end



end


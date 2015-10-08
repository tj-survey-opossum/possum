class SessionsController < ApplicationController
  def new
  end

  def create
    a = Author.find_by_email(params[:email])
    if a && a.authenticate(params[:password])
      session[:author_logged_in] = true
      redirect_to surveys_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session[:author_logged_in] = nil
  end
end

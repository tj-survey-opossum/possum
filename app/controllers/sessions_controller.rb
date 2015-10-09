class SessionsController < ApplicationController
  def new
  end

  def create

    a = Author.find_by_email(params[:email])
    if a && a.authenticate(params[:password])
      session[:author_logged_in] = true
      redirect_to surveys_path, notice: "Logged in!"

    author = Author.find_by(params[:email])
    if author && author.authenticate(params[:password])
      session[:author_id] = author.id
      redirect_to surveys_path, notice: "Logged in!"
    else
      redirect_to login_path, warning: "Login failed. Invalid email/password."
    end
  end

  def destroy
    session[:author_logged_in] = nil
    redirect_to login_path
  end
end

class SessionsController < ApplicationController
  before_action :direct_to_dashboard, only: [:new]

  def new

  end

  def create
    a = Author.find_by_email(params[:email])
    if a && a.authenticate(params[:password])
      session[:author_id] = a.id
      redirect_to dashboard_author_url(a), notice: "Logged in!"
    else
      redirect_to login_path, warning: "Login failed. Invalid email/password."
    end
  end

  def destroy
    session[:author_id] = nil
    flash[:notice] = "You have successfully logged out."
    redirect_to login_path
  end


private

  def direct_to_dashboard
      redirect_to dashboard_author_url(session[:author_id]) if current_author
  end
end

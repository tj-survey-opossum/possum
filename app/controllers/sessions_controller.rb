class SessionsController < ApplicationController

  def new
  end

  def create
    a = Author.find_by_email(params[:email])
    if a && a.authenticate(params[:password])
      session[:author_id] = a.id
      redirect_to surveys_path, notice: "Logged in!"
    else
      redirect_to login_path, warning: "Login failed. Invalid email/password."
    end
  end

  def destroy
    session[:author_id] = nil
    redirect_to login_path
  end

private

  def author_params
    params.require(:author).permit(:name, :email, :password)
  end

end

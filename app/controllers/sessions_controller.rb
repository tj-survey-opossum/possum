class SessionsController < ApplicationController

  def new
  end

  def create
    author = Author.find_by(params[:email])
    if author && author.authenticate(params[:password])
      session[:author_id] = author.id
      redirect_to surveys_path
    else
      redirect_to login
    end
  end

  def destroy

  end

private

  def author_params
    params.require(:author).permit(:name, :email, :password_digest)
  end

end

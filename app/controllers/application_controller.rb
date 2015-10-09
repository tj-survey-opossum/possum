class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private

  def current_author
    @current_author ||= Author.find(session[:author_id]) if session[:author_id]
  end

  helper_method :current_author

end

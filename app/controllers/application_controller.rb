class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private

  def current_author
    @current_author ||= Author.find(session[:author_id]) if session[:author_id]
  end

  helper_method :current_author

  def must_log_in
    redirect_to login_path, alert: "You must log in to do that!" if current_author.nil?
  end

  helper_method :must_log_in

end

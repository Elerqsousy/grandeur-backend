class ApplicationController < ActionController::API
  def current_user
    session[:current_user]
  end
end

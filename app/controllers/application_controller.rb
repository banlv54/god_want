class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery
  before_filter :authenticate_user!
  #skip_before_filter :verify_authenticity_token
  private
  def after_sign_out_path_for(resource)
    session[:previous_url] || new_user_session_path
  end

  def sign_out(resource_or_scope=nil)
    if session.empty?
      return
    else
      super
    end
  end
end

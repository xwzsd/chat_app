class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  after_filter :short_session
  def short_session
    request.session_options = request.session_options.dup
    request.session_options[:expire_after] = 5.minute
    request.session_options.freeze
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
  end

  # use our cool flash responder
  self.responder = FlashResponder

end

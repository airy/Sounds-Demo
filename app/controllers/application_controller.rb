class ApplicationController < ActionController::Base
  protect_from_forgery
  layout 'application'
  
  # sentinentuser enables to access current_user in models
  include SentientController
end

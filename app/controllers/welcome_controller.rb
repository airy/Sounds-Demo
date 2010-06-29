class WelcomeController < ApplicationController
  def public
    if user_signed_in?
        render :action => :home
    end
  end
end

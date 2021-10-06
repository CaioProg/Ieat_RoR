class HomeController < ApplicationController
  def index
    @email = user_signed_in? ? current_user.email : 'undefined'
  end
end

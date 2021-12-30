class HomeController < ApplicationController
  def index
    @current_user ? @name = @current_user.email : @name = 'дорогой гость'
  end
end
class UsersController < ApplicationController
  def show
    @name = current_user.name
    @events = current_user.events
  end
end

class RoomsController < ApplicationController
  def show
    @users = User.all
    @messages = Message.all
  end
end

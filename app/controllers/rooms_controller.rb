class RoomsController < ApplicationController
  def show
    @users = User.where('last_seen > ?', 5.minutes.ago)
    @messages = Message.all
  end
end

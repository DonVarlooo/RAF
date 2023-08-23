class PagesController < ApplicationController
  # Ce controller va nous servir à faire le dashboard
  def show
    @user = current_user
    # On récupère les friends pour afficher les noms dans le dashboard
    @my_bookings = current_user.bookings.where(status: nil)
    @friend = Friend.where(user: @user)
    @friend_booking = Booking.where(friend: @friend, status: nil)
    @accepts = current_user.bookings.where(status: true)
  end
end

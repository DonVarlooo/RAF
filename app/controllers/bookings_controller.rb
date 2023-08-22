class BookingsController < ApplicationController
  before_action :set_friend, only: [:new, :create, :index]
  def index
    @user = current_user
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.friend = @friend
    if @booking.save!
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_friend
    @friend = Friend.find(params[:friend_id])
  end
end

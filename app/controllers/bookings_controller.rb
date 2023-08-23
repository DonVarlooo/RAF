class BookingsController < ApplicationController
  before_action :set_friend, only: [:new, :create, :index, :show]
  def index
    @user = current_user
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.friend = @friend
    if @booking.save!
      redirect_to friend_booking_path(@friend, @booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end

  def set_friend
    @friend = Friend.find(params[:friend_id])
  end
end

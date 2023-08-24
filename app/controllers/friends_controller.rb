class FriendsController < ApplicationController
  def index
    @user = current_user
    @friends = Friend.all
    @markers = @friends.geocoded.map do |friend|
      {
        lat: friend.latitude,
        lng: friend.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {friend: friend}),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def show
    @friend = Friend.find(params[:id])
  end

  def new
    @friend = Friend.new
  end

  def create
    @friend = Friend.new(friend_params)
    @friend.user = current_user
    if @friend.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @friend = Friend.find(params[:id])
  end

  def update
    @friend = Friend.find(params[:id])
    if @friend.update(friend_params)
      redirect_to friend_path(@friend)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def friend_params
    params.require(:friend).permit(:name, :category, :price, :postal_address, :photo)
  end
end

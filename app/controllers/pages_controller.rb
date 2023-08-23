class PagesController < ApplicationController
  # Ce controller va nous servir à faire le dashboard
  def show
    @user = current_user
  end

  def edit_booking
    @user = current_user
  end

  def update_booking
  end
end

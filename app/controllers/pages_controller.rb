class PagesController < ApplicationController
  # Ce controller va nous servir à faire le dashboard
  def show
    @user = current_user
    # On récupère les friends pour afficher les noms dans le dashboard
    @pendings = current_user.bookings.where(status: nil)
    @accepts = current_user.bookings.where(status: true)
  end
  
end

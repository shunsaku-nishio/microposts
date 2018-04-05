class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    @micropost = Micropost.find(params[:micropost_id])
    current_user.favorite(@micropost)
    redirect_back(fallback_location: root_url)
  end

  def destroy
    @micropost = Micropost.find(params[:micropost_id])
    current_user.unfavorite(@micropost)
    redirect_back(fallback_location: root_url)
  end
end
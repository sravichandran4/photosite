class PhotoController < ApplicationController
  def index
    @user_all = User.joins(:photos)
    @user_all = User.find(params[:id])
    @photos_all = Photo.joins(:comments)
    @photos_all = @user_all.photos
    @comments_all = @user_all.comments
  end
end

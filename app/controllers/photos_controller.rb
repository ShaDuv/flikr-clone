class PhotosController < ApplicationController

  def new
    @user = current_user
    @photo = Photo.new
    render :new
  end

  def index
    @photos = current_user.photos
    render :index
  end

  def create
    # relies on the {:multipart => true} section of new.html.erb
    @user = current_user
    title = params[:title]
    caption = params[:caption]
    @photo = @user.photos.new(:title => title, :caption => caption)
    @photo.image_file.attach(params[:image])
    @photo.save
    redirect_to user_photos_path(@user)
  end

  def update
  end
end

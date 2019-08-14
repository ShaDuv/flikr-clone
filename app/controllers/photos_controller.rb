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
    new_title = params[:title]
    new_caption = params[:caption]
    @photo = Photo.find_by_id(params[:id])
    @photo.title = new_title
    @photo.caption = new_caption
    @photo.save
    redirect_to user_photos_path(current_user)
  end

  def edit
    @user = current_user
    @photo = Photo.find_by_id(params[:id])
    render :edit
  end

  def destroy
    @photo = Photo.find_by_id(params[:id])
    @photo.destroy
    redirect_to user_photos_path(current_user)
  end
end

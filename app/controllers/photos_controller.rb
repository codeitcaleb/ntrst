class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(id: params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    photo = Photo.create(photo_params)
    redirect_to photo
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

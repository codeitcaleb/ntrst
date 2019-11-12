class PhotosController < ApplicationController
  def index
    @photos = Photo.all
    # byebug
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
    @photo.locations.build
    @photo.tags.build
  end

  def create
    @photo = Photo.create(photo_params)
    redirect_to photos_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def photo_params
    params.require(:photo).permit(:image, :caption, 
    locations_attributes: [:location],
    tags_attributes: [:title]
    )
  end
end

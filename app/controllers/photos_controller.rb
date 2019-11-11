class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def show
    
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.create(photo_params)
    redirect_to photos_path(@photo)
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

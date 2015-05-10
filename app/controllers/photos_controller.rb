class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new_form

  end

  def create_row
    pic = Photo.new
    pic.caption = params[:the_caption]
    pic.source = params[:the_source]
    pic.save
    redirect_to("http://localhost:3000/photos")
  end

  def destroy
    pic = Photo.find(params[:id])
    pic.destroy

    redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    @photo = Photo.find(params[:id])
  end

  def update_row
    pic = Photo.find(params[:id])
    pic.source = params[:the_source]
    pic.caption = params[:the_caption]
    pic.save
    redirect_to("http://localhost:3000/photos/#{pic.id}")
  end

end

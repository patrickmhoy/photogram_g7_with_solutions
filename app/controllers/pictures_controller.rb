class PicturesController < ApplicationController
    def new_form

      render ("pic_templates/new_form.html.erb")
    end

    def create_row

      @photo = Photo.new
      @photo.source = params[:image_url]
      @photo.caption = params[:image_caption]

      @photo.save

      @list_of_photos = Photo.all


      redirect_to ("/photos")
  end

  def index


    @list_of_photos = Photo.all

    render ("pic_templates/index.html.erb")

  end

  def show

    @photo = Photo.find(params[:id])

    render ("pic_templates/show.html.erb")


  end

  def edit_form

      @photo = Photo.find(params[:id])

      render ("pic_templates/edit_form.html.erb")

  end

  def update_row

    @photo = Photo.find(params[:id])

    @photo.source = params[:image_url]
    @photo.caption = params[:image_caption]

    @photo.save

    @list_of_photos = Photo.all

    redirect_to ("/photos/"+@photo.id.to_s)

  end

  def destroy_row

    @photo = Photo.find(params[:id])

    @photo.destroy

    @list_of_photos = Photo.all

    redirect_to ("/photos")

end

end

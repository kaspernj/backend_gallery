require_dependency "backend_gallery/application_controller"

module BackendGallery
  class PicturesController < ApplicationController
    before_action :set_picture, only: [:show, :edit, :update, :destroy]

    # GET /pictures
    def index
      @pictures = Picture.all
    end

    # GET /pictures/1
    def show
    end

    # GET /pictures/new
    def new
      @picture = Picture.new
    end

    # GET /pictures/1/edit
    def edit
    end

    # POST /pictures
    def create
      pic = params[:picture].delete(:picture)
      title = params[:picture].delete(:title)
      
      @picture = Picture.new(params[:picture])
      @picture.title = title

      if @picture.save
        @picture.set_from_upload(pic)
        redirect_to group_picture_path(@group, @picture), notice: 'Picture was successfully created.'
      else
        render action: 'new'
      end
    end

    # PATCH/PUT /pictures/1
    def update
      pic = params[:picture].delete(:picture)
      @picture.title = params[:picture].delete(:title)
      
      if @picture.update(params[:picture])
        @picture.set_from_upload(pic) if pic
        
        redirect_to group_picture_path(@group, @picture), notice: 'Picture was successfully updated.'
      else
        render action: 'edit'
      end
    end

    # DELETE /pictures/1
    def destroy
      @picture.destroy
      redirect_to group_pictures_url(@group), notice: 'Picture was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_picture
        @picture = Picture.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def picture_params
        params.require(:picture).permit(:group_id, :user_type, :user_id)
      end
  end
end

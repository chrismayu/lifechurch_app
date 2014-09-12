class EventsPicturesController < ApplicationController
  before_action :set_events_picture, only: [:show, :edit, :update, :destroy]

  # GET /events_pictures
  # GET /events_pictures.json
  def index
    @events_pictures = EventsPicture.all
  end

  # GET /events_pictures/1
  # GET /events_pictures/1.json
  def show
  end

  # GET /events_pictures/new
  def new
    @events_picture = EventsPicture.new
  end

  # GET /events_pictures/1/edit
  def edit
  end

  # POST /events_pictures
  # POST /events_pictures.json
  def create
    @events_picture = EventsPicture.new(events_picture_params)

    respond_to do |format|
      if @events_picture.save
        format.html { redirect_to @events_picture, notice: 'Events picture was successfully created.' }
        format.json { render :show, status: :created, location: @events_picture }
      else
        format.html { render :new }
        format.json { render json: @events_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events_pictures/1
  # PATCH/PUT /events_pictures/1.json
  def update
    respond_to do |format|
      if @events_picture.update(events_picture_params)
        format.html { redirect_to @events_picture, notice: 'Events picture was successfully updated.' }
        format.json { render :show, status: :ok, location: @events_picture }
      else
        format.html { render :edit }
        format.json { render json: @events_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events_pictures/1
  # DELETE /events_pictures/1.json
  def destroy
    @events_picture.destroy
    respond_to do |format|
      format.html { redirect_to events_pictures_url, notice: 'Events picture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_events_picture
      @events_picture = EventsPicture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def events_picture_params
      params.require(:events_picture).permit(:title, :event_image, :linked_event, :description, :event_id, :eventimage, :image_processed)
    end
end

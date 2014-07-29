class SprocketsController < ApplicationController
  before_action :set_sprocket, only: [:show, :edit, :update, :destroy]

  # GET /sprockets
  # GET /sprockets.json
  def index
    @sprockets = Sprocket.all
  end

  # GET /sprockets/1
  # GET /sprockets/1.json
  def show
  end

  # GET /sprockets/new
  def new
    @sprocket = Sprocket.new
  end

  # GET /sprockets/1/edit
  def edit
  end

  # POST /sprockets
  # POST /sprockets.json
  def create
    @sprocket = Sprocket.new(sprocket_params)

    respond_to do |format|
      if @sprocket.save
        format.html { redirect_to @sprocket, notice: 'Sprocket was successfully created.' }
        format.json { render :show, status: :created, location: @sprocket }
      else
        format.html { render :new }
        format.json { render json: @sprocket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sprockets/1
  # PATCH/PUT /sprockets/1.json
  def update
    respond_to do |format|
      if @sprocket.update(sprocket_params)
        format.html { redirect_to @sprocket, notice: 'Sprocket was successfully updated.' }
        format.json { render :show, status: :ok, location: @sprocket }
      else
        format.html { render :edit }
        format.json { render json: @sprocket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sprockets/1
  # DELETE /sprockets/1.json
  def destroy
    @sprocket.destroy
    respond_to do |format|
      format.html { redirect_to sprockets_url, notice: 'Sprocket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sprocket
      @sprocket = Sprocket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sprocket_params
      params.require(:sprocket).permit(:user_id, :title, :description)
    end
end

class DangerZonesController < ApplicationController
  before_action :set_danger_zone, only: [:show, :edit, :update, :destroy]

  # GET /danger_zones
  # GET /danger_zones.json
  def index
    @danger_zones = DangerZone.all
  end

  # GET /danger_zones/1
  # GET /danger_zones/1.json
  def show
  end

  # GET /danger_zones/new
  def new
    @danger_zone = DangerZone.new
  end

  # GET /danger_zones/1/edit
  def edit
  end

  # POST /danger_zones
  # POST /danger_zones.json
  def create
    @danger_zone = DangerZone.new(danger_zone_params)

    respond_to do |format|
      if @danger_zone.save
        format.html { redirect_to @danger_zone, notice: 'Danger zone was successfully created.' }
        format.json { render :show, status: :created, location: @danger_zone }
      else
        format.html { render :new }
        format.json { render json: @danger_zone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /danger_zones/1
  # PATCH/PUT /danger_zones/1.json
  def update
    respond_to do |format|
      if @danger_zone.update(danger_zone_params)
        format.html { redirect_to @danger_zone, notice: 'Danger zone was successfully updated.' }
        format.json { render :show, status: :ok, location: @danger_zone }
      else
        format.html { render :edit }
        format.json { render json: @danger_zone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /danger_zones/1
  # DELETE /danger_zones/1.json
  def destroy
    @danger_zone.destroy
    respond_to do |format|
      format.html { redirect_to danger_zones_url, notice: 'Danger zone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_danger_zone
      @danger_zone = DangerZone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def danger_zone_params
      params.require(:danger_zone).permit(:x, :y)
    end
end

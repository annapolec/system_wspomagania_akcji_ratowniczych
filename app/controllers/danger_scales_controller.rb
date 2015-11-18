class DangerScalesController < ApplicationController
  before_action :set_danger_scale, only: [:show, :edit, :update, :destroy]

  # GET /danger_scales
  # GET /danger_scales.json
  def index
    @danger_scales = DangerScale.all
  end

  # GET /danger_scales/1
  # GET /danger_scales/1.json
  def show
  end

  # GET /danger_scales/new
  def new
    @danger_scale = DangerScale.new
  end

  # GET /danger_scales/1/edit
  def edit
  end

  # POST /danger_scales
  # POST /danger_scales.json
  def create
    @danger_scale = DangerScale.new(danger_scale_params)

    respond_to do |format|
      if @danger_scale.save
        format.html { redirect_to @danger_scale, notice: 'Danger scale was successfully created.' }
        format.json { render :show, status: :created, location: @danger_scale }
      else
        format.html { render :new }
        format.json { render json: @danger_scale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /danger_scales/1
  # PATCH/PUT /danger_scales/1.json
  def update
    respond_to do |format|
      if @danger_scale.update(danger_scale_params)
        format.html { redirect_to @danger_scale, notice: 'Danger scale was successfully updated.' }
        format.json { render :show, status: :ok, location: @danger_scale }
      else
        format.html { render :edit }
        format.json { render json: @danger_scale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /danger_scales/1
  # DELETE /danger_scales/1.json
  def destroy
    @danger_scale.destroy
    respond_to do |format|
      format.html { redirect_to danger_scales_url, notice: 'Danger scale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_danger_scale
      @danger_scale = DangerScale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def danger_scale_params
      params.require(:danger_scale).permit(:value)
    end
end

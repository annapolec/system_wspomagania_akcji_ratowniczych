class WeatherConditionsController < ApplicationController
  before_action :set_weather_condition, only: [:show, :edit, :update, :destroy]

  # GET /weather_conditions
  # GET /weather_conditions.json
  def index
    @weather_conditions = WeatherCondition.all
  end

  # GET /weather_conditions/1
  # GET /weather_conditions/1.json
  def show
  end

  # GET /weather_conditions/new
  def new
    @weather_condition = WeatherCondition.new
  end

  # GET /weather_conditions/1/edit
  def edit
  end

  # POST /weather_conditions
  # POST /weather_conditions.json
  def create
    @weather_condition = WeatherCondition.new(weather_condition_params)

    respond_to do |format|
      if @weather_condition.save
        format.html { redirect_to @weather_condition, notice: 'Weather condition was successfully created.' }
        format.json { render :show, status: :created, location: @weather_condition }
      else
        format.html { render :new }
        format.json { render json: @weather_condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weather_conditions/1
  # PATCH/PUT /weather_conditions/1.json
  def update
    respond_to do |format|
      if @weather_condition.update(weather_condition_params)
        format.html { redirect_to @weather_condition, notice: 'Weather condition was successfully updated.' }
        format.json { render :show, status: :ok, location: @weather_condition }
      else
        format.html { render :edit }
        format.json { render json: @weather_condition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weather_conditions/1
  # DELETE /weather_conditions/1.json
  def destroy
    @weather_condition.destroy
    respond_to do |format|
      format.html { redirect_to weather_conditions_url, notice: 'Weather condition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weather_condition
      @weather_condition = WeatherCondition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weather_condition_params
      params.require(:weather_condition).permit(:float)
    end
end

class MeassuresController < ApplicationController
  before_action :set_meassure, only: [:show, :edit, :update, :destroy]

  # GET /meassures
  # GET /meassures.json
  def index
    @meassures = Meassure.all
  end

  # GET /meassures/1
  # GET /meassures/1.json
  def show
  end

  # GET /meassures/new
  def new
    @meassure = Meassure.new
  end

  # GET /meassures/1/edit
  def edit
  end

  # POST /meassures
  # POST /meassures.json
  def create
    @meassure = Meassure.new(meassure_params)

    respond_to do |format|
      if @meassure.save
        format.html { redirect_to @meassure, notice: 'Meassure was successfully created.' }
        format.json { render :show, status: :created, location: @meassure }
      else
        format.html { render :new }
        format.json { render json: @meassure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meassures/1
  # PATCH/PUT /meassures/1.json
  def update
    respond_to do |format|
      if @meassure.update(meassure_params)
        format.html { redirect_to @meassure, notice: 'Meassure was successfully updated.' }
        format.json { render :show, status: :ok, location: @meassure }
      else
        format.html { render :edit }
        format.json { render json: @meassure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meassures/1
  # DELETE /meassures/1.json
  def destroy
    @meassure.destroy
    respond_to do |format|
      format.html { redirect_to meassures_url, notice: 'Meassure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meassure
      @meassure = Meassure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meassure_params
      params.require(:meassure).permit(:day, :metric_id, :value, :test_id, :patient_id, :specialist_id)
    end
end

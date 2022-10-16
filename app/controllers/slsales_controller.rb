class SlsalesController < ApplicationController
  before_action :set_slsale, only: %i[ show edit update destroy ]

  # GET /slsales or /slsales.json
  def index
    @slsales = Slsale.all
  end

  # GET /slsales/1 or /slsales/1.json
  def show
  end

  # GET /slsales/new
  def new
    @slsale = Slsale.new
  end

  # GET /slsales/1/edit
  def edit
  end

  # POST /slsales or /slsales.json
  def create
    @slsale = Slsale.new(slsale_params)

    respond_to do |format|
      if @slsale.save
        format.html { redirect_to slsale_url(@slsale), notice: "Slsale was successfully created." }
        format.json { render :show, status: :created, location: @slsale }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @slsale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /slsales/1 or /slsales/1.json
  def update
    respond_to do |format|
      if @slsale.update(slsale_params)
        format.html { redirect_to slsale_url(@slsale), notice: "Slsale was successfully updated." }
        format.json { render :show, status: :ok, location: @slsale }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @slsale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /slsales/1 or /slsales/1.json
  def destroy
    @slsale.destroy

    respond_to do |format|
      format.html { redirect_to slsales_url, notice: "Slsale was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slsale
      @slsale = Slsale.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def slsale_params
      params.require(:slsale).permit(:salename, :location, :site)
    end
end

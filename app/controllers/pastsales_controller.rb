class PastsalesController < ApplicationController
  before_action :set_pastsale, only: %i[ show edit update destroy ]

  # GET /pastsales or /pastsales.json
  def index
    @pastsales = Pastsale.all
  end

  # GET /pastsales/1 or /pastsales/1.json
  def show
  end

  # GET /pastsales/new
  def new
    @pastsale = Pastsale.new
  end

  # GET /pastsales/1/edit
  def edit
  end

  # POST /pastsales or /pastsales.json
  def create
    @pastsale = Pastsale.new(pastsale_params)

    respond_to do |format|
      if @pastsale.save
        format.html { redirect_to pastsale_url(@pastsale), notice: "Pastsale was successfully created." }
        format.json { render :show, status: :created, location: @pastsale }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pastsale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pastsales/1 or /pastsales/1.json
  def update
    respond_to do |format|
      if @pastsale.update(pastsale_params)
        format.html { redirect_to pastsale_url(@pastsale), notice: "Pastsale was successfully updated." }
        format.json { render :show, status: :ok, location: @pastsale }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pastsale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pastsales/1 or /pastsales/1.json
  def destroy
    @pastsale.destroy

    respond_to do |format|
      format.html { redirect_to pastsales_url, notice: "Pastsale was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pastsale
      @pastsale = Pastsale.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pastsale_params
      params.require(:pastsale).permit(:salename, :location, :site, :sale_id, :date)
    end
end

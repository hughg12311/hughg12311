class UpcomingsalesController < ApplicationController
  before_action :set_upcomingsale, only: %i[ show edit update destroy ]

  # GET /upcomingsales or /upcomingsales.json
  def index
    @upcomingsales = Upcomingsale.all
  end

  # GET /upcomingsales/1 or /upcomingsales/1.json
  def show
  end

  # GET /upcomingsales/new
  def new
    @upcomingsale = Upcomingsale.new
  end

  # GET /upcomingsales/1/edit
  def edit
  end

  # POST /upcomingsales or /upcomingsales.json
  def create
    @upcomingsale = Upcomingsale.new(upcomingsale_params)

    respond_to do |format|
      if @upcomingsale.save
        format.html { redirect_to upcomingsale_url(@upcomingsale), notice: "Sale was successfully created." }
        format.json { render :show, status: :created, location: @upcomingsale }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @upcomingsale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /upcomingsales/1 or /upcomingsales/1.json
  def update
    respond_to do |format|
      if @upcomingsale.update(upcomingsale_params)
        format.html { redirect_to upcomingsale_url(@upcomingsale), notice: "Sale was successfully updated." }
        format.json { render :show, status: :ok, location: @upcomingsale }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @upcomingsale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /upcomingsales/1 or /upcomingsales/1.json
  def destroy
    @upcomingsale.destroy

    respond_to do |format|
      format.html { redirect_to upcomingsales_url, notice: "Sale was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_upcomingsale
      @upcomingsale = Upcomingsale.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def upcomingsale_params
      params.require(:upcomingsale).permit(:salename, :location, :site)
    end
end

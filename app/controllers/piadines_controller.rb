class PiadinesController < ApplicationController
  before_action :set_piadine, only: %i[ show edit update destroy ]

  # GET /piadines or /piadines.json
  def index
    @piadines = Piadine.all
  end

  # GET /piadines/1 or /piadines/1.json
  def show
  end

  # GET /piadines/new
  def new
    @piadine = Piadine.new
  end

  # GET /piadines/1/edit
  def edit
  end

  # POST /piadines or /piadines.json
  def create
    @piadine = Piadine.new(piadine_params)

    respond_to do |format|
      if @piadine.save
        format.html { redirect_to piadine_url(@piadine), notice: "Piadine was successfully created." }
        format.json { render :show, status: :created, location: @piadine }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @piadine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /piadines/1 or /piadines/1.json
  def update
    respond_to do |format|
      if @piadine.update(piadine_params)
        format.html { redirect_to piadine_url(@piadine), notice: "Piadine was successfully updated." }
        format.json { render :show, status: :ok, location: @piadine }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @piadine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /piadines/1 or /piadines/1.json
  def destroy
    @piadine.destroy

    respond_to do |format|
      format.html { redirect_to piadines_url, notice: "Piadine was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_piadine
      @piadine = Piadine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def piadine_params
      params.require(:piadine).permit(:Nome, :impasto, :farcitura, :quantità, :indirizzo)
    end
end

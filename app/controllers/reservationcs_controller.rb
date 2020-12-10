class ReservationcsController < ApplicationController
  before_action :set_reservationc, only: [:show, :edit, :update, :destroy]

  # GET /reservationcs
  # GET /reservationcs.json
  def index
    @reservationcs = Reservationc.all
  end

  # GET /reservationcs/1
  # GET /reservationcs/1.json
  def show
  end

  # GET /reservationcs/new
  def new
    @reservationc = Reservationc.new
  end

  # GET /reservationcs/1/edit
  def edit
  end

  # POST /reservationcs
  # POST /reservationcs.json
  def create
    @reservationc = Reservationc.new(reservationc_params)

    respond_to do |format|
      if @reservationc.save
        format.html { redirect_to @reservationc, notice: 'Reservationc was successfully created.' }
        format.json { render :show, status: :created, location: @reservationc }
      else
        format.html { render :new }
        format.json { render json: @reservationc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservationcs/1
  # PATCH/PUT /reservationcs/1.json
  def update
    respond_to do |format|
      if @reservationc.update(reservationc_params)
        format.html { redirect_to @reservationc, notice: 'Reservationc was successfully updated.' }
        format.json { render :show, status: :ok, location: @reservationc }
      else
        format.html { render :edit }
        format.json { render json: @reservationc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservationcs/1
  # DELETE /reservationcs/1.json
  def destroy
    @reservationc.destroy
    respond_to do |format|
      format.html { redirect_to reservationcs_url, notice: 'Reservationc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservationc
      @reservationc = Reservationc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reservationc_params
      params.require(:reservationc).permit(:name, :start_time)
    end
end

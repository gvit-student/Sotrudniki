class SotrsController < ApplicationController
  before_action :set_sotr, only: [:show, :edit, :update, :destroy]

  # GET /sotrs
  # GET /sotrs.json
  def index
    @sotrs = Sotr.all
  end

  # GET /sotrs/1
  # GET /sotrs/1.json
  def show
  end

  # GET /sotrs/new
  def new
    @sotr = Sotr.new
  end

  # GET /sotrs/1/edit
  def edit
  end

  # POST /sotrs
  # POST /sotrs.json
  def create
    @sotr = Sotr.new(sotr_params)

    respond_to do |format|
      if @sotr.save
        format.html { redirect_to @sotr, notice: 'Sotr was successfully created.' }
        format.json { render :show, status: :created, location: @sotr }
      else
        format.html { render :new }
        format.json { render json: @sotr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sotrs/1
  # PATCH/PUT /sotrs/1.json
  def update
    respond_to do |format|
      if @sotr.update(sotr_params)
        format.html { redirect_to @sotr, notice: 'Sotr was successfully updated.' }
        format.json { render :show, status: :ok, location: @sotr }
      else
        format.html { render :edit }
        format.json { render json: @sotr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sotrs/1
  # DELETE /sotrs/1.json
  def destroy
    @sotr.destroy
    respond_to do |format|
      format.html { redirect_to sotrs_url, notice: 'Sotr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sotr
      @sotr = Sotr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sotr_params
      params.require(:sotr).permit(:s_fam, :s_name, :s_otch, :s_date, :dlzh_id, :s_photo)
    end
end

class HobbySotrsController < ApplicationController
  before_action :set_hobby_sotr, only: [:show, :edit, :update, :destroy]

  # GET /hobby_sotrs
  # GET /hobby_sotrs.json
  def index
    @hobby_sotrs = HobbySotr.all
  end

  # GET /hobby_sotrs/1
  # GET /hobby_sotrs/1.json
  def show
  end

  # GET /hobby_sotrs/new
  def new
    @hobby_sotr = HobbySotr.new
  end

  # GET /hobby_sotrs/1/edit
  def edit
  end

  # POST /hobby_sotrs
  # POST /hobby_sotrs.json
  def create
    @hobby_sotr = HobbySotr.new(hobby_sotr_params)

    respond_to do |format|
      if @hobby_sotr.save
        format.html { redirect_to @hobby_sotr, notice: 'Hobby sotr was successfully created.' }
        format.json { render :show, status: :created, location: @hobby_sotr }
      else
        format.html { render :new }
        format.json { render json: @hobby_sotr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hobby_sotrs/1
  # PATCH/PUT /hobby_sotrs/1.json
  def update
    respond_to do |format|
      if @hobby_sotr.update(hobby_sotr_params)
        format.html { redirect_to @hobby_sotr, notice: 'Hobby sotr was successfully updated.' }
        format.json { render :show, status: :ok, location: @hobby_sotr }
      else
        format.html { render :edit }
        format.json { render json: @hobby_sotr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hobby_sotrs/1
  # DELETE /hobby_sotrs/1.json
  def destroy
    @hobby_sotr.destroy
    respond_to do |format|
      format.html { redirect_to hobby_sotrs_url, notice: 'Hobby sotr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hobby_sotr
      @hobby_sotr = HobbySotr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hobby_sotr_params
      params.require(:hobby_sotr).permit(:sotr_id, :hobby_id, :status, :s_delete)
    end
end

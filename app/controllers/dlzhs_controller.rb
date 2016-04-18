class DlzhsController < ApplicationController
  before_action :set_dlzh, only: [:show, :edit, :update, :destroy]
  skip_before_action :authorize, only: [:create, :update, :destroy]
  
  # GET /dlzhs
  # GET /dlzhs.json
  def index
    @dlzhs = Dlzh.all
  end

  # GET /dlzhs/1
  # GET /dlzhs/1.json
  def show
  end

  # GET /dlzhs/new
  def new
    @dlzh = Dlzh.new
  end

  # GET /dlzhs/1/edit
  def edit
  end

  # POST /dlzhs
  # POST /dlzhs.json
  def create
    @dlzh = Dlzh.new(dlzh_params)

    respond_to do |format|
      if @dlzh.save
        format.html { redirect_to @dlzh, notice: 'Dlzh was successfully created.' }
        format.json { render :show, status: :created, location: @dlzh }
      else
        format.html { render :new }
        format.json { render json: @dlzh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dlzhs/1
  # PATCH/PUT /dlzhs/1.json
  def update
    respond_to do |format|
      if @dlzh.update(dlzh_params)
        format.html { redirect_to @dlzh, notice: 'Dlzh was successfully updated.' }
        format.json { render :show, status: :ok, location: @dlzh }
      else
        format.html { render :edit }
        format.json { render json: @dlzh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dlzhs/1
  # DELETE /dlzhs/1.json
  def destroy
    @dlzh.destroy
    respond_to do |format|
      format.html { redirect_to dlzhs_url, notice: 'Dlzh was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dlzh
      @dlzh = Dlzh.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dlzh_params
      params.require(:dlzh).permit(:d_name)
    end
end

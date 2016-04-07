class HobbiesController < ApplicationController
  before_action :set_hobby, only: [:show, :edit, :update, :destroy]

  # GET /hobbies
  # GET /hobbies.json
  def index
    @hobbies = Hobby.all
  end

  # GET /hobbies/1
  # GET /hobbies/1.json
  def show
  end

  # GET /hobbies/new
  def new
    @hobby = Hobby.new
  end

  # GET /hobbies/1/edit
  def edit
  end

  # POST /hobbies
  # POST /hobbies.json
  def create
    @hobby = Hobby.new(hobby_params)

    respond_to do |format|
      if @hobby.save
        format.html { redirect_to @hobby, notice: 'Hobby was successfully created.' }
        format.json { render :show, status: :created, location: @hobby }
      else
        format.html { render :new }
        format.json { render json: @hobby.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hobbies/1
  # PATCH/PUT /hobbies/1.json
  def update
    respond_to do |format|
      if @hobby.update(hobby_params)
        format.html { redirect_to @hobby, notice: 'Hobby was successfully updated.' }
        format.json { render :show, status: :ok, location: @hobby }
      else
        format.html { render :edit }
        format.json { render json: @hobby.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hobbies/1
  # DELETE /hobbies/1.json
  def destroy
    @hobby.destroy
    respond_to do |format|
      format.html { redirect_to hobbies_url, notice: 'Hobby was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hobby
      @hobby = Hobby.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hobby_params
      params.require(:hobby).permit(:h_name)
    end
end

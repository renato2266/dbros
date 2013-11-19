class FasciclesController < ApplicationController
  before_action :set_fascicle, only: [:show, :edit, :update, :destroy]

  # GET /fascicles
  # GET /fascicles.json
  def index
    @fascicles = Fascicle.all
  end

  # GET /fascicles/1
  # GET /fascicles/1.json
  def show
     @names = @fascicle.names
     @groups =@fascicle.groups
  end

  # GET /fascicles/new
  def new
    @fascicle = Fascicle.new
  end

  # GET /fascicles/1/edit
  def edit
  end

  # POST /fascicles
  # POST /fascicles.json
  def create
    @fascicle = Fascicle.new(fascicle_params)

    respond_to do |format|
      if @fascicle.save
        format.html { redirect_to @fascicle, notice: 'Fascicle was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fascicle }
      else
        format.html { render action: 'new' }
        format.json { render json: @fascicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fascicles/1
  # PATCH/PUT /fascicles/1.json
  def update
    respond_to do |format|
      if @fascicle.update(fascicle_params)
        format.html { redirect_to @fascicle, notice: 'Fascicle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fascicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fascicles/1
  # DELETE /fascicles/1.json
  def destroy
    @fascicle.destroy
    respond_to do |format|
      format.html { redirect_to fascicles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fascicle
      @fascicle = Fascicle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fascicle_params
      params.require(:fascicle).permit(:numero, :note, :name_ids, :group_ids)
    end
end

class AmbitsController < ApplicationController
  before_action :set_ambit, only: [:show, :edit, :update, :destroy]

  # GET /ambits
  # GET /ambits.json
  def index
    @ambits = Ambit.all
  end

  # GET /ambits/1
  # GET /ambits/1.json
  def show
  end

  # GET /ambits/new
  def new
    @ambit = Ambit.new
  end

  # GET /ambits/1/edit
  def edit
  end

  # POST /ambits
  # POST /ambits.json
  def create
    @ambit = Ambit.new(ambit_params)

    respond_to do |format|
      if @ambit.save
        format.html { redirect_to @ambit, notice: 'Ambit was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ambit }
      else
        format.html { render action: 'new' }
        format.json { render json: @ambit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ambits/1
  # PATCH/PUT /ambits/1.json
  def update
    respond_to do |format|
      if @ambit.update(ambit_params)
        format.html { redirect_to @ambit, notice: 'Ambit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ambit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ambits/1
  # DELETE /ambits/1.json
  def destroy
    @ambit.destroy
    respond_to do |format|
      format.html { redirect_to ambits_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ambit
      @ambit = Ambit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ambit_params
      params.require(:ambit).permit(:ambito_criminale, :note_ambito)
    end
end

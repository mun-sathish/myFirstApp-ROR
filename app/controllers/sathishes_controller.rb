class SathishesController < ApplicationController
  before_action :set_sathish, only: [:show, :edit, :update, :destroy]

  # GET /sathishes
  # GET /sathishes.json
  def index
    @sathishes = Sathish.all
  end

  # GET /sathishes/1
  # GET /sathishes/1.json
  def show
  end

  # GET /sathishes/new
  def new
    @sathish = Sathish.new
  end

  # GET /sathishes/1/edit
  def edit
  end

  # POST /sathishes
  # POST /sathishes.json
  def create
    @sathish = Sathish.new(sathish_params)

    respond_to do |format|
      if @sathish.save
        format.html { redirect_to @sathish, notice: 'Sathish was successfully created.' }
        format.json { render action: 'show', status: :created, location: @sathish }
      else
        format.html { render action: 'new' }
        format.json { render json: @sathish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sathishes/1
  # PATCH/PUT /sathishes/1.json
  def update
    respond_to do |format|
      if @sathish.update(sathish_params)
        format.html { redirect_to @sathish, notice: 'Sathish was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sathish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sathishes/1
  # DELETE /sathishes/1.json
  def destroy
    @sathish.destroy
    respond_to do |format|
      format.html { redirect_to sathishes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sathish
      @sathish = Sathish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sathish_params
      params.require(:sathish).permit(:name, :semester, :marks, :address)
    end
end

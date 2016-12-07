class IinesController < ApplicationController
  before_action :set_iine, only: [:show, :edit, :update, :destroy]

  # GET /iines
  # GET /iines.json
  def index
    @iines = Iine.all
  end

  # GET /iines/1
  # GET /iines/1.json
  def show
  end

  # GET /iines/new
  def new
    @iine = Iine.new
  end

  # GET /iines/1/edit
  def edit
  end

  # POST /iines
  # POST /iines.json
  def create
    @iine = Iine.new(iine_params)

    respond_to do |format|
      if @iine.save
        format.html { redirect_to @iine, notice: 'Iine was successfully created.' }
        format.json { render :show, status: :created, location: @iine }
      else
        format.html { render :new }
        format.json { render json: @iine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /iines/1
  # PATCH/PUT /iines/1.json
  def update
    respond_to do |format|
      if @iine.update(iine_params)
        format.html { redirect_to @iine, notice: 'Iine was successfully updated.' }
        format.json { render :show, status: :ok, location: @iine }
      else
        format.html { render :edit }
        format.json { render json: @iine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iines/1
  # DELETE /iines/1.json
  def destroy
    @iine.destroy
    respond_to do |format|
      format.html { redirect_to iines_url, notice: 'Iine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_iine
      @iine = Iine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def iine_params
      params.require(:iine).permit(:user_id, :example_id)
    end
end

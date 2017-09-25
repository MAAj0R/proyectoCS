class PistsController < ApplicationController
  before_action :set_pist, only: [:show, :edit, :update, :destroy]

  # GET /pists
  # GET /pists.json
  def index
    @pists = Pist.all
  end

  # GET /pists/1
  # GET /pists/1.json
  def show
    @commonts = Commont.where(pist_id: @pist).order("created_at DESC")
  end

  # GET /pists/new
  def new
    @pist = Pist.new
  end

  # GET /pists/1/edit
  def edit
  end

  # POST /pists
  # POST /pists.json
  def create
    @pist = Pist.new(pist_params)

    respond_to do |format|
      if @pist.save
        format.html { redirect_to @pist, notice: 'Pist was successfully created.' }
        format.json { render :show, status: :created, location: @pist }
      else
        format.html { render :new }
        format.json { render json: @pist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pists/1
  # PATCH/PUT /pists/1.json
  def update
    respond_to do |format|
      if @pist.update(pist_params)
        format.html { redirect_to @pist, notice: 'Pist was successfully updated.' }
        format.json { render :show, status: :ok, location: @pist }
      else
        format.html { render :edit }
        format.json { render json: @pist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pists/1
  # DELETE /pists/1.json
  def destroy
    @pist.destroy
    respond_to do |format|
      format.html { redirect_to pists_url, notice: 'Pist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pist
      @pist = Pist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pist_params
      params.require(:pist).permit(:title, :content, :user)
    end
end

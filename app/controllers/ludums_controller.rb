class LudumsController < ApplicationController
  before_action :set_ludum, only: [:show, :edit, :update, :destroy]

  # GET /ludums
  # GET /ludums.json
  def index
    @ludums = Ludum.all
  end

  # GET /ludums/1
  # GET /ludums/1.json
  def show
  end

  # GET /ludums/new
  def new
    @ludum = Ludum.new
  end

  # GET /ludums/1/edit
  def edit
  end

  # POST /ludums
  # POST /ludums.json
  def create
    @ludum = Ludum.new(ludum_params)

    respond_to do |format|
      if @ludum.save
        format.html { redirect_to @ludum, notice: 'Ludum was successfully created.' }
        format.json { render :show, status: :created, location: @ludum }
      else
        format.html { render :new }
        format.json { render json: @ludum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ludums/1
  # PATCH/PUT /ludums/1.json
  def update
    respond_to do |format|
      if @ludum.update(ludum_params)
        format.html { redirect_to @ludum, notice: 'Ludum was successfully updated.' }
        format.json { render :show, status: :ok, location: @ludum }
      else
        format.html { render :edit }
        format.json { render json: @ludum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ludums/1
  # DELETE /ludums/1.json
  def destroy
    @ludum.destroy
    respond_to do |format|
      format.html { redirect_to ludums_url, notice: 'Ludum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ludum
      @ludum = Ludum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ludum_params
      params.fetch(:ludum, {})
    end
end

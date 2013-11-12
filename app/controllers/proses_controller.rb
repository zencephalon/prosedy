class ProsesController < ApplicationController
  before_action :set_prose, only: [:show, :edit, :update, :destroy]

  # GET /proses
  # GET /proses.json
  def index
    @proses = Prose.all
  end

  # GET /proses/1
  # GET /proses/1.json
  def show
  end

  # GET /proses/new
  def new
    @prose = Prose.new
  end

  # GET /proses/1/edit
  def edit
  end

  # POST /proses
  # POST /proses.json
  def create
    @prose = Prose.new(prose_params)

    respond_to do |format|
      if @prose.save
        format.html { redirect_to @prose, notice: 'Prose was successfully created.' }
        format.json { render action: 'show', status: :created, location: @prose }
      else
        format.html { render action: 'new' }
        format.json { render json: @prose.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proses/1
  # PATCH/PUT /proses/1.json
  def update
    respond_to do |format|
      if @prose.update(prose_params)
        format.html { redirect_to @prose, notice: 'Prose was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @prose.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proses/1
  # DELETE /proses/1.json
  def destroy
    @prose.destroy
    respond_to do |format|
      format.html { redirect_to proses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prose
      @prose = Prose.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prose_params
      params.require(:prose).permit(:title, :text)
    end
end

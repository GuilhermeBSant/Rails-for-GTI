class BibliotecariosController < ApplicationController
  before_action :set_bibliotecario, only: %i[ show edit update destroy ]

  # GET /bibliotecarios or /bibliotecarios.json
  def index
    @bibliotecarios = Bibliotecario.all
  end

  # GET /bibliotecarios/1 or /bibliotecarios/1.json
  def show
  end

  # GET /bibliotecarios/new
  def new
    @bibliotecario = Bibliotecario.new
  end

  # GET /bibliotecarios/1/edit
  def edit
  end

  # POST /bibliotecarios or /bibliotecarios.json
  def create
    @bibliotecario = Bibliotecario.new(bibliotecario_params)

    respond_to do |format|
      if @bibliotecario.save
        format.html { redirect_to bibliotecario_url(@bibliotecario), notice: "Bibliotecario was successfully created." }
        format.json { render :show, status: :created, location: @bibliotecario }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bibliotecario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bibliotecarios/1 or /bibliotecarios/1.json
  def update
    respond_to do |format|
      if @bibliotecario.update(bibliotecario_params)
        format.html { redirect_to bibliotecario_url(@bibliotecario), notice: "Bibliotecario was successfully updated." }
        format.json { render :show, status: :ok, location: @bibliotecario }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bibliotecario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bibliotecarios/1 or /bibliotecarios/1.json
  def destroy
    @bibliotecario.destroy

    respond_to do |format|
      format.html { redirect_to bibliotecarios_url, notice: "Bibliotecario was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bibliotecario
      @bibliotecario = Bibliotecario.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bibliotecario_params
      params.require(:bibliotecario).permit(:nome)
    end
end

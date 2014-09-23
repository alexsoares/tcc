class InteressesController < ApplicationController
  before_action :set_interess, only: [:show, :edit, :update, :destroy]

  # GET /interesses
  # GET /interesses.json
  def index
    @interesses = Interess.all
  end

  # GET /interesses/1
  # GET /interesses/1.json
  def show
  end

  # GET /interesses/new
  def new
    @interess = Interess.new
  end

  # GET /interesses/1/edit
  def edit
  end

  # POST /interesses
  # POST /interesses.json
  def create
    @interess = Interess.new(interess_params)

    respond_to do |format|
      if @interess.save
        format.html { redirect_to @interess, notice: 'Interesse was successfully created.' }
        format.json { render action: 'show', status: :created, location: @interess }
      else
        format.html { render action: 'new' }
        format.json { render json: @interess.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interesses/1
  # PATCH/PUT /interesses/1.json
  def update
    respond_to do |format|
      if @interess.update(interess_params)
        format.html { redirect_to @interess, notice: 'Interesse was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @interess.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interesses/1
  # DELETE /interesses/1.json
  def destroy
    @interess.destroy
    respond_to do |format|
      format.html { redirect_to interesses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interess
      @interess = Interess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interess_params
      params.require(:interess).permit(:nome, :descricao, :user)
    end
end

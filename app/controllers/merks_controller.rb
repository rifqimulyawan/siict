class MerksController < ApplicationController
  before_action :set_merk, only: [:show, :edit, :update, :destroy]

  # GET /merks
  # GET /merks.json
  def index
    @merks = Merk.all
  end

  # GET /merks/1
  # GET /merks/1.json
  def show
  end

  # GET /merks/new
  def new
    @merk = Merk.new
  end

  # GET /merks/1/edit
  def edit
  end

  # POST /merks
  # POST /merks.json
  def create
    @merk = Merk.new(merk_params)

    respond_to do |format|
      if @merk.save
        format.html { redirect_to @merk, notice: 'Merk berhasil ditambah.' }
        format.json { render :show, status: :created, location: @merk }
      else
        format.html { render :new }
        format.json { render json: @merk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /merks/1
  # PATCH/PUT /merks/1.json
  def update
    respond_to do |format|
      if @merk.update(merk_params)
        format.html { redirect_to @merk, notice: 'Merk berhasil diedit' }
        format.json { render :show, status: :ok, location: @merk }
      else
        format.html { render :edit }
        format.json { render json: @merk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /merks/1
  # DELETE /merks/1.json
  def destroy
    @merk.destroy
    respond_to do |format|
      format.html { redirect_to merks_url, notice: 'Merk berhasil dihapus' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_merk
      @merk = Merk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def merk_params
      params.require(:merk).permit(:kategori_id, :nama)
    end
end

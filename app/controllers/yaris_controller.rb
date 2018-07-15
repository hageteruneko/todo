class YarisController < ApplicationController
  before_action :set_yari, only: [:show, :edit, :update, :destroy]

  # GET /yaris
  # GET /yaris.json
  def index
    @search = Yari.ransack(params[:q])
    @yaris = @search.result
  end

  # GET /yaris/1
  # GET /yaris/1.json
  def show
  end

  # GET /yaris/new
  def new
    @yari = Yari.new
  end

  # GET /yaris/1/edit
  def edit
  end

  # POST /yaris
  # POST /yaris.json
  def create
    @yari = Yari.new(yari_params)

    respond_to do |format|
      if @yari.save
        format.html { redirect_to @yari, notice: 'Yari was successfully created.' }
        format.json { render :show, status: :created, location: @yari }
      else
        format.html { render :new }
        format.json { render json: @yari.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yaris/1
  # PATCH/PUT /yaris/1.json
  def update
    respond_to do |format|
      if @yari.update(yari_params)
        format.html { redirect_to @yari, notice: 'Yari was successfully updated.' }
        format.json { render :show, status: :ok, location: @yari }
      else
        format.html { render :edit }
        format.json { render json: @yari.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yaris/1
  # DELETE /yaris/1.json
  def destroy
    @yari.destroy
    respond_to do |format|
      format.html { redirect_to yaris_url, notice: 'Yari was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yari
      @yari = Yari.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yari_params
      params.require(:yari).permit(:title, :content, :term)
    end
end

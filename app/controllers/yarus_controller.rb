class YarusController < ApplicationController
  before_action :set_yaru, only: [:show, :edit, :update, :destroy]

  # GET /yarus
  # GET /yarus.json
  def index
    @search = Yaru.ransack(params[:q])
    @yarus = @search.result
  end

  # GET /yarus/1
  # GET /yarus/1.json
  def show
  end

  # GET /yarus/new
  def new
    @yaru = Yaru.new
  end

  # GET /yarus/1/edit
  def edit
  end

  # POST /yarus
  # POST /yarus.json
  def create
    @yaru = Yaru.new(yaru_params)

    respond_to do |format|
      if @yaru.save
        format.html { redirect_to @yaru, notice: 'Yaru was successfully created.' }
        format.json { render :show, status: :created, location: @yaru }
      else
        format.html { render :new }
        format.json { render json: @yaru.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yarus/1
  # PATCH/PUT /yarus/1.json
  def update
    respond_to do |format|
      if @yaru.update(yaru_params)
        format.html { redirect_to @yaru, notice: 'Yaru was successfully updated.' }
        format.json { render :show, status: :ok, location: @yaru }
      else
        format.html { render :edit }
        format.json { render json: @yaru.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yarus/1
  # DELETE /yarus/1.json
  def destroy
    @yaru.destroy
    respond_to do |format|
      format.html { redirect_to yarus_url, notice: 'Yaru was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yaru
      @yaru = Yaru.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yaru_params
      params.require(:yaru).permit(:title, :content, :dline, :create)
    end
end

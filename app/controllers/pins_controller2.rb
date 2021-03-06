class PinsController2 < ApplicationController
  before_action :set_pin, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /pins2
  # GET /pins2.json
  def index
    @pins = Pin2.all
    @categories = Category.all
  end

  # GET /pins2/1
  # GET /pins2/1.json
  def show
    @categories = Category.all

  end

  # GET /pins2/new
  def new
    @pin = Pin2.new
    @categories = Category.all

  end

  # GET /pins2/1/edit
  def edit
  end

  # POST /pins2
  # POST /pins2.json
  def create
    @pin = Pin2.new(pin_params)
    @pin.user = current_user

    respond_to do |format|
      if @pin.save
        format.html { redirect_to @pin, notice: 'Pin2 was successfully created.' }
        format.json { render :show, status: :created, location: @pin }
      else
        format.html { render :new }
        format.json { render json: @pin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pins2/1
  # PATCH/PUT /pins2/1.json
  def update
    respond_to do |format|
      if @pin.update(pin_params)
        format.html { redirect_to @pin, notice: 'Pin2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @pin }
      else
        format.html { render :edit }
        format.json { render json: @pin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pins2/1
  # DELETE /pins2/1.json
  def destroy
    @pin.destroy
    respond_to do |format|
      format.html { redirect_to pins_url, notice: 'Pin2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pin
      @pin = Pin2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pin_params
      params.require(:pin).permit(:title, :caption, :image, :category_id  )
    end
end

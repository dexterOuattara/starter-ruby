class MycategoriesController < ApplicationController
  before_action :set_mycategory, only: [:show, :edit, :update, :destroy]

  # GET /mycategories
  # GET /mycategories.json
  def index
    @mycategories = Mycategory.all
  end

  # GET /mycategories/1
  # GET /mycategories/1.json
  def show
  end

  # GET /mycategories/new
  def new
    @mycategory = Mycategory.new
  end

  # GET /mycategories/1/edit
  def edit
  end

  # POST /mycategories
  # POST /mycategories.json
  def create
    @mycategory = Mycategory.new(mycategory_params)

    respond_to do |format|
      if @mycategory.save
        format.html { redirect_to @mycategory, notice: 'Mycategory was successfully created.' }
        format.json { render :show, status: :created, location: @mycategory }
      else
        format.html { render :new }
        format.json { render json: @mycategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mycategories/1
  # PATCH/PUT /mycategories/1.json
  def update
    respond_to do |format|
      if @mycategory.update(mycategory_params)
        format.html { redirect_to @mycategory, notice: 'Mycategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @mycategory }
      else
        format.html { render :edit }
        format.json { render json: @mycategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mycategories/1
  # DELETE /mycategories/1.json
  def destroy
    @mycategory.destroy
    respond_to do |format|
      format.html { redirect_to mycategories_url, notice: 'Mycategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mycategory
      @mycategory = Mycategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mycategory_params
      params.require(:mycategory).permit(:title, :content)
    end
end

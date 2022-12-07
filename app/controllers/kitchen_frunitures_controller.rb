class KitchenFrunituresController < ApplicationController
  before_action :set_kitchen_fruniture, only: %i[ show edit update destroy ]

  # GET /kitchen_frunitures or /kitchen_frunitures.json
  def index
    @kitchen_frunitures = KitchenFruniture.all
  end

  # GET /kitchen_frunitures/1 or /kitchen_frunitures/1.json
  def show
  end

  # GET /kitchen_frunitures/new
  def new
    @kitchen_fruniture = KitchenFruniture.new
  end

  # GET /kitchen_frunitures/1/edit
  def edit
  end

  # POST /kitchen_frunitures or /kitchen_frunitures.json
  def create
    @kitchen_fruniture = KitchenFruniture.new(kitchen_fruniture_params)

    respond_to do |format|
      if @kitchen_fruniture.save
        format.html { redirect_to kitchen_fruniture_url(@kitchen_fruniture), notice: "Kitchen fruniture was successfully created." }
        format.json { render :show, status: :created, location: @kitchen_fruniture }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kitchen_fruniture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kitchen_frunitures/1 or /kitchen_frunitures/1.json
  def update
    respond_to do |format|
      if @kitchen_fruniture.update(kitchen_fruniture_params)
        format.html { redirect_to kitchen_fruniture_url(@kitchen_fruniture), notice: "Kitchen fruniture was successfully updated." }
        format.json { render :show, status: :ok, location: @kitchen_fruniture }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kitchen_fruniture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kitchen_frunitures/1 or /kitchen_frunitures/1.json
  def destroy
    @kitchen_fruniture.destroy

    respond_to do |format|
      format.html { redirect_to kitchen_frunitures_url, notice: "Kitchen fruniture was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kitchen_fruniture
      @kitchen_fruniture = KitchenFruniture.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kitchen_fruniture_params
      params.require(:kitchen_fruniture).permit(:name, :title, :content, :price)
    end
end

class RestauranttsController < ApplicationController
  before_action :set_restaurantt, only: %i[ show edit update destroy ]

  # GET /restaurantts or /restaurantts.json
  def index
    @restaurantts = Restaurantt.all
  end

  # GET /restaurantts/1 or /restaurantts/1.json
  def show
  end

  # GET /restaurantts/new
  def new
    @restaurantt = Restaurantt.new
  end

  # GET /restaurantts/1/edit
  def edit
  end

  # POST /restaurantts or /restaurantts.json
  def create
    @restaurantt = Restaurantt.new(restaurantt_params)

    respond_to do |format|
      if @restaurantt.save
        format.html { redirect_to @restaurantt, notice: "Restaurantt was successfully created." }
        format.json { render :show, status: :created, location: @restaurantt }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @restaurantt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurantts/1 or /restaurantts/1.json
  def update
    respond_to do |format|
      if @restaurantt.update(restaurantt_params)
        format.html { redirect_to @restaurantt, notice: "Restaurantt was successfully updated." }
        format.json { render :show, status: :ok, location: @restaurantt }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @restaurantt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurantts/1 or /restaurantts/1.json
  def destroy
    @restaurantt.destroy
    respond_to do |format|
      format.html { redirect_to restaurantts_url, notice: "Restaurantt was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurantt
      @restaurantt = Restaurantt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def restaurantt_params
      params.require(:restaurantt).permit(:name, :address)
    end
end

class AppliancesController < ApplicationController
  before_action :set_appliance, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  # GET /appliances
  def index
    @appliances_grid = initialize_grid(Appliance, order: 'id')
  end

  # GET /appliances/1
  def show
  end

  # GET /appliances/new
  def new
    @appliance = Appliance.new
  end

  # GET /appliances/1/edit
  def edit
  end

  # POST /appliances
  def create
    @appliance = Appliance.new(appliance_params)

    if @appliance.save
      redirect_to @appliance, notice: 'Appliance was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /appliances/1
  def update
    if @appliance.update(appliance_params)
      redirect_to @appliance, notice: 'Appliance was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /appliances/1
  def destroy
    @appliance.destroy
    redirect_to appliances_url, notice: 'Appliance was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appliance
      @appliance = Appliance.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def appliance_params
      params.require(:appliance).permit(:storeNumbre, :name, :intIp, :extIp, :brand, :model, :user, :password, :customer_id)
    end
end

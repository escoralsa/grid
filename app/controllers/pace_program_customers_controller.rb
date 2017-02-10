class PaceProgramCustomersController < ApplicationController
  before_action :set_pace_program_customer, only: [:show, :edit, :update, :destroy]

  # GET /pace_program_customers
  def index
    #@pace_program_customers = PaceProgramCustomer.all
    @pace_program_customers_grid = initialize_grid(PaceProgramCustomer, order: 'id')
    @r=1
  end

  # GET /pace_program_customers/1
  def show
  end

  # GET /pace_program_customers/new
  def new
    @pace_program_customer = PaceProgramCustomer.new
  end

  # GET /pace_program_customers/1/edit
  def edit
  end


  # POST /pace_program_customers
  def create
    @pace_program_customer = PaceProgramCustomer.new(pace_program_customer_params)

    if @pace_program_customer.save
      redirect_to @pace_program_customer, notice: 'Pace program customer was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /pace_program_customers/1
  def update
    if @pace_program_customer.update(pace_program_customer_params)
      redirect_to @pace_program_customer, notice: 'Pace program customer was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /pace_program_customers/1
  def destroy
    @pace_program_customer.destroy
    redirect_to pace_program_customers_url, notice: 'Pace program customer was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pace_program_customer
      @pace_program_customer = PaceProgramCustomer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pace_program_customer_params
      params.require(:pace_program_customer).permit(:customer_id, :pace_program_id, :note)
    end
end

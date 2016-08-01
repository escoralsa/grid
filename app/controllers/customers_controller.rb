class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  # GET /customers
  def index
    @customers_grid = initialize_grid(Customer, order: 'accnumber')
  end

  # GET /customers/1
  def show
  end

  # GET /customers/new
  def new
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit
    @tickets_grid = initialize_grid(Ticket, name: 'ticket', order: 'id', :conditions => ['customer_id = ?', @customer])
    @appliances_grid = initialize_grid(Appliance, name: 'device',order: 'id', :conditions => ['customer_id = ?', @customer])

  end

  # POST /customers
  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      redirect_to @customer, notice: 'Customer was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /customers/1
  def update
    if @customer.update(customer_params)
      redirect_to edit_customer_path
    else
      render :edit
    end
  end

  # DELETE /customers/1
  def destroy
    @customer.destroy
    redirect_to customers_url, notice: 'Customer was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def customer_params
      params.require(:customer).permit(:name, :adress, :accnumber, :phone, :contact, :rfc, :email, :ip, :server, :datacenter, :vpacesetter, :vprogress, :userNumber, :catalog, :softwareC, :programesp, :emailpdf, :emailxml, :pdf)
    end
end

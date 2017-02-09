class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  # GET /tickets
  def index

  @tickets_grid = initialize_grid(Ticket,
                                  order: 'date',
                                  order_direction: 'desc',
                                  per_page:15,
                                  include: [:priority, :situation, :category, :employee],
                                  custom_order: {
                                      'tickets.priority_id' => 'priorities.name',
                                      'tickets.situation_id' => 'situations.name',
                                      'tickets.category_id' => 'categories.name',
                                      'tickets.employee_id' => 'employees.name'
                                  }
  )


  end

  def show

  end

  def new
    @ticket = Ticket.new
  end

  # GET /tickets/1/edit
  def edit
    @user_id = current_user
    @activities_grid = initialize_grid(Activity, order: 'id', :conditions => ['ticket_id = ?', @ticket])
    @attacheds_grid = initialize_grid(Attached, order: 'id', :conditions => ['ticket_id = ?', @ticket])
  end

  # POST /tickets
  def create

    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      redirect_to tickets_path , notice: 'Ticket was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tickets/1
  def update
    if @ticket.update(ticket_params.except(:user_id))
      redirect_to edit_ticket_path, notice: 'Registro actualizado'
    else
      render :edit
    end
  end

  # DELETE /tickets/1
  def destroy
    @ticket.destroy
    redirect_to tickets_url, notice: 'Ticket was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ticket_params
      params.require(:ticket).permit(:id, :date, :contact_id, :notes, :employee_id, :customer_id, :priority_id, :situation_id, :category_id, :user_id, :image)
    end

end

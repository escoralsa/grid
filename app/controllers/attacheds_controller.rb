class AttachedsController < ApplicationController
  before_action :set_attached, only: [:show, :edit, :update, :destroy]

  # GET /attacheds
  def index
    @attacheds = Attached.all
  end

  # GET /attacheds/1
  def show
  end

  # GET /attacheds/new
  def new
    @ticketnum = params[:ticketnum]
    @attached = Attached.new
  end

  # GET /attacheds/1/edit
  def edit
  end

  # POST /attacheds
  def create
    @attached = Attached.new(attached_params)

    if @attached.save
      redirect_to @attached, notice: 'Attached was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /attacheds/1
  def update
    if @attached.update(attached_params)
      redirect_to @attached, notice: 'Attached was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /attacheds/1
  def destroy
    @attached.destroy
    redirect_to attacheds_url, notice: 'Attached was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attached
      @attached = Attached.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def attached_params
      params.require(:attached).permit(:description, :file, :ticket_id)
    end
end

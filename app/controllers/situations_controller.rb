class SituationsController < ApplicationController
  before_action :set_situation, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  # GET /situations
  def index
     @situations_grid = initialize_grid(Situation,
                                        order: 'id')
  end

  # GET /situations/1
  def show
  end

  # GET /situations/new
  def new
    @situation = Situation.new
  end

  # GET /situations/1/edit
  def edit
  end

  # POST /situations
  def create
    @situation = Situation.new(situation_params)

    if @situation.save
      redirect_to @situation, notice: 'Situation was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /situations/1
  def update
    if @situation.update(situation_params)
      redirect_to @situation, notice: 'Situation was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /situations/1
  def destroy
    @situation.destroy
    redirect_to situations_url, notice: 'Situation was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_situation
      @situation = Situation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def situation_params
      params.require(:situation).permit(:name, :description)
    end
end

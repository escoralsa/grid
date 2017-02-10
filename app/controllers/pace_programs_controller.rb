class PaceProgramsController < ApplicationController
  before_action :set_pace_program, only: [:show, :edit, :update, :destroy]

  # GET /pace_programs
  def index
    #@pace_programs = PaceProgram.all
    @pace_programs_grid = initialize_grid(PaceProgram, order: 'id')
  end

  # GET /pace_programs/1
  def show
  end

  # GET /pace_programs/new
  def new
    @pace_program = PaceProgram.new
  end

  # GET /pace_programs/1/edit
  def edit
  end

  # POST /pace_programs
  def create
    @pace_program = PaceProgram.new(pace_program_params)

    if @pace_program.save
      redirect_to @pace_program, notice: 'Pace program was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /pace_programs/1
  def update
    if @pace_program.update(pace_program_params)
      redirect_to @pace_program, notice: 'Pace program was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /pace_programs/1
  def destroy
    @pace_program.destroy
    redirect_to pace_programs_url, notice: 'Pace program was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pace_program
      @pace_program = PaceProgram.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pace_program_params
      params.require(:pace_program).permit(:name, :description)
    end
end

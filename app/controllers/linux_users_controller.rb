class LinuxUsersController < ApplicationController
  before_action :set_linux_user, only: [:show, :edit, :update, :destroy]

  # GET /linux_users
  def index
    #@linux_users = LinuxUser.all

    @linux_users_grid = initialize_grid(LinuxUser, order: 'id')

  end

  # GET /linux_users/1
  def show
  end

  # GET /linux_users/new
  def new
    @linux_user = LinuxUser.new
  end

  # GET /linux_users/1/edit
  def edit
  end

  # POST /linux_users
  def create
    @linux_user = LinuxUser.new(linux_user_params)

    if @linux_user.save
      redirect_to @linux_user, notice: 'Linux user was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /linux_users/1
  def update
    if @linux_user.update(linux_user_params)
      redirect_to @linux_user, notice: 'Linux user was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /linux_users/1
  def destroy
    @linux_user.destroy
    redirect_to linux_users_url, notice: 'Linux user was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_linux_user
      @linux_user = LinuxUser.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def linux_user_params
      params.require(:linux_user).permit(:user, :password, :customer_id)
    end
end

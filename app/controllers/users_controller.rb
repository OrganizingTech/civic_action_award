class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  # GET /users or /users.json
    # require "pry"; binding.pry
    @users = User.all
    # require "pry"; binding.pry
  end
  def index

  # GET /users/1 or /users/1.json
  def show
    # require "pry"; binding.pry
  end

  # GET /users/new
  def new
    # require "pry"; binding.pry
    @user = User.new
    # require "pry"; binding.pry
  end

  # GET /users/1/edit
  def edit
    # require "pry"; binding.pry
  end

  # POST /users or /users.json
  def create
    # require "pry"; binding.pry
    @user = User.new(user_params)
    # require "pry"; binding.pry

    respond_to do |format|
      if @user.save
        # require "pry"; binding.pry
        format.html { redirect_to user_url(@user), notice: "User was successfully created." }
        format.json { render :show, status: :created, location: @user }
      else
        # require "pry"; binding.pry
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
      # require "pry"; binding.pry
    end
    # require "pry"; binding.pry
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to user_url(@user), notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :email, :password_digest, :role)
    end
end

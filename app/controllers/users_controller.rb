class UsersController < ApplicationController
  before_action :set_user, only: %i[show update destroy]

  # GET /users/:id
  def new; end

  # POST /users
  def create
    @user_name = user_params.user[:name]
    @user = findCreateUser(@user_name)
    redirect_to root_path, notice: "Hello #{@user_name}!"
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:get, :create)
  end
end
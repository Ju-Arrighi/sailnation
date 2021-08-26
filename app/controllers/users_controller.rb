class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]

  def show
    @user = User.find(params[:id])
    @markers = @user.geocode.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

end
#  def index
#     @users = User.all
#   end


#   def new
#     @user = User.new
#   end

#   def create
#     @user = User.new(user_params)
#     @user.user = current_user
#     if @user.save
#     # criar uma iteração com as informações que vão estar no card do serviço
#     # terminar a iteração e redirecionar para redirect_to users_path antes do else
#     else
#       render :new
#     end
#   end

#   def edit
#   end

#   def update
#     @user.update(user_params)
#     if @user.save!
#       redirect_to users_path
#     else
#       render :edit
#     end
#   end

#   private


# end

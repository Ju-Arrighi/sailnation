class ServicesController < ApplicationController
  before_action :find_service, only: [:show, :edit, :update]

  def index
    @services = Service.all
  end

  def show
    @review = Review.new
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    @service.user = current_user
    if @service.save
    # criar uma iteração com as informações que vão estar no card do serviço
    # terminar a iteração e redirecionar para redirect_to services_path antes do else
    else
      render :new
    end
  end

  def edit
  end

  def update
    @service.update(service_params)
    if @service.save!
      redirect_to services_path
    else
      render :edit
    end
  end

  private

  def service_params
    params.require(:services).permit(:brand, :part, :description, :level, :video_url, :thumbnail)
  end

  def find_service
    @service = Service.find(params[:id])
  end
end

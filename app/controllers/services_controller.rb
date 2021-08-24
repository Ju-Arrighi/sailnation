class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def new
    @services = Service.new
  end

  def create
    @services = Service.new(params[:services])
    @services.save
    if @services.save
      redirect_to services_path(@services)
    else
      render :new
    end
  end

  def show
    @services = Service.find(params[:id])
  end

  private

  def service_params
    params.require(:services).permit(:brand, :part, :description, :level, :video_url)
  end

end

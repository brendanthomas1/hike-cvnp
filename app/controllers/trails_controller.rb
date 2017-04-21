class TrailsController < ApplicationController
  before_action :authenticate_user!, only: :index
  before_action :authenticate_admin, only: %i[new create show]
  before_action :set_trail, only: %i[show update destroy]
  before_action :new_trail, only: :create

  def index
    @trails = Trail.all
  end

  def new
    @trails = Trail.all
  end

  def create
    if @trail.save
      redirect_to trail_path @trail
    else
      render :show
    end
  end

  def show; end

  def update
    if @trail.update trail_params
      redirect_to trail_path @trail
    else
      render :show
    end
  end

  def destroy
    @trail.destroy
    redirect_to new_trail_path
  end

  private

  def set_trail
    @trail = Trail.find params[:id]
  end

  def new_trail
    @trail = Trail.new trail_params
  end

  def trail_params
    params.require(:trail).permit(:name, :distance, :trail_type)
  end
end

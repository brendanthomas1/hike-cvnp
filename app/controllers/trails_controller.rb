class TrailsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_trail, only: :show
  before_action :new_trail, only: :create

  def index
    @trails = Trail.all
  end

  def new; end

  def create
    if @trail.save
      redirect_to trail_path @trail
    else
      render :show
    end
  end

  def show; end

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

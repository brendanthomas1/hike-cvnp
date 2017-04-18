class TrailsController < ApplicationController
  before_action :authenticate_user!

  def index
    @trails = Trail.all
  end
end

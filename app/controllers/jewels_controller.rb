class JewelsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :admin_check, only: [:new, :create, :edit, :update, :destroy, :admin_dashboard]
  before_action :set_jewel, only: [:show, :edit, :update, :destroy]

  def index
    @jewels = Jewel.all
  end

  def admin_dashboard
    @jewels = Jewel.all
    @orders = Order.all
  end

  def show
  end

  def new
    @jewel = Jewel.new
  end

  def create
    @jewel.new(jewel_params)
    if @jewel.save
      render :admin_dashboard
    else
      render :index
    end
  end

  def edit          #
  end

  def update
  end

  def destroy
  end

  private

  def jewel_params
    params.require(:jewel).permit(:name, :available, :price, :description, :picture)
  end

  def admin_check
    render :index unless current_user.admin
  end

  def set_jewel
    @jewel = Jewel.find(params[:id])
  end

end

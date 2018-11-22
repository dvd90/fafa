class OrdersController < ApplicationController
  before_action :set_order, only: [:show]

  def index
    @orders = Order.all
  end

  def show
  end

  def new
    @jewel = Jewel.find(params[:jewel_id])
  end

  def create
    @jewel = Jewel.find(params[:jewel_id])
    @order = Order.new
    @order.user = current_user
    @order.jewel = @jewel
    if @order.save
      redirect_to jewel_order_path(@jewel, @order)
    else
      render jewel_path(@jewel)
    end
  end

  private

  def set_order
    @order =  Order.find(params[:id])
  end
end

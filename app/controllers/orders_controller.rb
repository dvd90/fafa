class OrdersController < ApplicationController
  before_action :set_order, only: [:show]

  def index
    @orders = Order.all
  end

  def show
    @jewel = Jewel.find(params[:jewel_id])
  end

  def new
    @jewel = Jewel.find(params[:jewel_id])
  end

  def create
    @jewel = Jewel.find(params[:jewel_id])
    @order = Order.create!(jewel_sku: @jewel.sku, amount: @jewel.price, state: 'pending', user: current_user)
    @order.jewel_id = @jewel.id
    if @order.save
      redirect_to new_jewel_order_payment_path(@jewel, @order)
    else
      render jewel_path(@jewel)
    end
  end

  private

  def set_order
    @order =  Order.find(params[:id])
  end
end

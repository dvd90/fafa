class JewelsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_jewel, only: [:show, :edit, :update, :destroy]
  def index
    @jewels = Jewel.all
  end

  def show
  end

  private

  def set_jewel
    @jewel = Jewel.find(params[:id])
  end

end

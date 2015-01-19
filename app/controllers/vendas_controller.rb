class VendasController < ApplicationController
  before_action :set_venda, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @vendas = Venda.all
    respond_with(@vendas)
  end

  def show
    respond_with(@venda)
  end

  def new
    @venda = Venda.new
    respond_with(@venda)
  end

  def edit
  end

  def create
    @venda = Venda.new(venda_params)
    @venda.save
    respond_with(@venda)
  end

  def update
    @venda.update(venda_params)
    respond_with(@venda)
  end

  def destroy
    @venda.destroy
    respond_with(@venda)
  end

  private
    def set_venda
      @venda = Venda.find(params[:id])
    end

    def venda_params
      params.require(:venda).permit(:proprietario_id, :fechado)
    end
end

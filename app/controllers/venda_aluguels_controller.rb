class VendaAluguelsController < ApplicationController
  before_action :set_venda_aluguel, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @venda_aluguels = VendaAluguel.all
    respond_with(@venda_aluguels)
  end

  def show
    respond_with(@venda_aluguel)
  end

  def new
    @venda_aluguel = VendaAluguel.new
    respond_with(@venda_aluguel)
  end

  def edit
  end

  def create
    @venda_aluguel = VendaAluguel.new(venda_aluguel_params)
    @venda_aluguel.save
    respond_with(@venda_aluguel)
  end

  def update
    @venda_aluguel.update(venda_aluguel_params)
    respond_with(@venda_aluguel)
  end

  def destroy
    @venda_aluguel.destroy
    respond_with(@venda_aluguel)
  end

  private
    def set_venda_aluguel
      @venda_aluguel = VendaAluguel.find(params[:id])
    end

    def venda_aluguel_params
      params.require(:venda_aluguel).permit(:contratoPrestacaoServico_id, :modeloContrato_id, :cliente_id, :funcionario_id, :valor, :valor, :dataAssinaturaContrato)
    end
end

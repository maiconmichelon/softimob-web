class ReservasController < ApplicationController
  before_action :set_reserva, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @reservas = Reserva.all
    respond_with(@reservas)
  end

  def show
    respond_with(@reserva)
  end

  def new
    @reserva = Reserva.new
    respond_with(@reserva)
  end

  def edit
  end

  def create
    @reserva = Reserva.new(reserva_params)
    @reserva.save
    respond_with(@reserva)
  end

  def update
    @reserva.update(reserva_params)
    respond_with(@reserva)
  end

  def destroy
    @reserva.destroy
    respond_with(@reserva)
  end

  private
    def set_reserva
      @reserva = Reserva.find(params[:id])
    end

    def reserva_params
      params.require(:reserva).permit(:dataReserva, :dataVencimento, :cliente_id, :funcionario_id, :valor, :valor, :observacoes, :imovel_id, :resolvido)
    end
end

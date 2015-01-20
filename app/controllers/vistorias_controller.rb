class VistoriasController < ApplicationController
  before_action :set_vistoria, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @vistorias = Vistorias.all
    respond_with(@vistorias)
  end

  def show
    respond_with(@vistoria)
  end

  def new
    @vistorium = Vistoria.new
    respond_with(@vistoria)
  end

  def edit
  end

  def create
    @vistorium = Vistoria.new(vistoria_params)
    @vistorium.save
    respond_with(@vistorium)
  end

  def update
    @vistorium.update(vistoria_params)
    respond_with(@vistorium)
  end

  def destroy
    @vistorium.destroy
    respond_with(@vistorium)
  end

  private
    def set_vistoria
      @vistorium = Vistoria.find(params[:id])
    end

    def vistoria_params
      params.require(:vistorium).permit(:data, :funcionario_id, :observacoes, :vendaAluguel_id)
    end
end

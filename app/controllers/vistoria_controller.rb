class VistoriaController < ApplicationController
  before_action :set_vistorium, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @vistoria = Vistorium.all
    respond_with(@vistoria)
  end

  def show
    respond_with(@vistorium)
  end

  def new
    @vistorium = Vistorium.new
    respond_with(@vistorium)
  end

  def edit
  end

  def create
    @vistorium = Vistorium.new(vistorium_params)
    @vistorium.save
    respond_with(@vistorium)
  end

  def update
    @vistorium.update(vistorium_params)
    respond_with(@vistorium)
  end

  def destroy
    @vistorium.destroy
    respond_with(@vistorium)
  end

  private
    def set_vistorium
      @vistorium = Vistorium.find(params[:id])
    end

    def vistorium_params
      params.require(:vistorium).permit(:data, :funcionario_id, :observacoes, :vendaAluguel_id)
    end
end

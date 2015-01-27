class BairrosController < ApplicationController
  before_action :set_bairro, only: [:show, :edit, :update, :destroy]

  respond_to :html, :json

  def index
    @bairros = Bairro.all
    respond_with(@bairros)
  end

  def show
    respond_with(@bairro)
  end

  def bairros_by_municipio
    @bairros = Bairro.find_by municipio_id: params[:municipio_id]
    respond_with(@bairros)
  end
  
  def new
    @bairro = Bairro.new
    respond_with(@bairro)
  end

  def edit
  end

  def create
    @bairro = Bairro.new(bairro_params)
    @bairro.save
    respond_with(@bairro)
  end

  def update
    @bairro.update(bairro_params)
    respond_with(@bairro)
  end

  def destroy
    @bairro.destroy
    respond_with(@bairro)
  end

  private
    def set_bairro
      @bairro = Bairro.find(params[:id])
    end

    def bairro_params
      params.require(:bairro).permit(:nome, :municipio_id)
    end
end

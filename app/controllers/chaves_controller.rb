class ChavesController < ApplicationController
  before_action :set_chave, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @chaves = Chave.all
    respond_with(@chaves)
  end

  def show
    respond_with(@chave)
  end

  def new
    @chave = Chave.new
    respond_with(@chave)
  end

  def edit
  end

  def create
    @chave = Chave.new(chave_params)
    @chave.save
    respond_with(@chave)
  end

  def update
    @chave.update(chave_params)
    respond_with(@chave)
  end

  def destroy
    @chave.destroy
    respond_with(@chave)
  end

  private
    def set_chave
      @chave = Chave.find(params[:id])
    end

    def chave_params
      params.require(:chave).permit(:numero, :imovel_id, :localizacao)
    end
end

class EnderecosController < ApplicationController
  before_action :set_endereco, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @enderecos = Endereco.all
    respond_with(@enderecos)
  end

  def show
    respond_with(@endereco)
  end

  def new
    @endereco = Endereco.new
    respond_with(@endereco)
  end

  def edit
  end

  def create
    @endereco = Endereco.new(endereco_params)
    @endereco.save
    respond_with(@endereco)
  end

  def update
    @endereco.update(endereco_params)
    respond_with(@endereco)
  end

  def destroy
    @endereco.destroy
    respond_with(@endereco)
  end

  private
    def set_endereco
      @endereco = Endereco.find(params[:id])
    end

    def endereco_params
      params.require(:endereco).permit(:cep, :rua_id, :numero, :complemento)
    end
end

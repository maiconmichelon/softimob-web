class EmpresasController < ApplicationController
  before_action :set_empresa, only: [:show, :edit, :update, :destroy, :logar]

  respond_to :html

  def index
    @empresas = current_user ? current_user.empresas : []
    respond_with(@empresas)
  end

  def show
    current_empresa = @empresa
    respond_with(@empresa)
  end

  def new
    @empresa = Empresa.new
    respond_with(@empresa)
  end

  def edit
  end

  def create
    @empresa = Empresa.new(empresa_params)
    @empresa.usuarios << current_user
    @empresa.save
    redirect_to action: 'index'
  end

  def update
    @empresa.update(empresa_params)
    redirect_to action: 'index'
  end

  def destroy
    @empresa.destroy
    respond_with(@empresa)
  end

  private
    def set_empresa
      @empresa = Empresa.find(params[:id])
    end

    def empresa_params
      params.require(:empresa).permit(:razaoSocial)
    end
end

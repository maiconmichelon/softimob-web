class ClientesController < ApplicationController
  before_action :set_cliente, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @clientes = Cliente.all
    respond_with(@clientes)
  end

  def show
    respond_with(@cliente)
  end

  def new
    @cliente = Cliente.new
    respond_with(@cliente)
  end

  def edit
  end

  def create
    @cliente = Cliente.new(cliente_params)
    @cliente.save
    respond_with(@cliente)
  end

  def update
    @cliente.update(cliente_params)
    respond_with(@cliente)
  end

  def destroy
    @cliente.destroy
    respond_with(@cliente)
  end

  private
    def set_cliente
      @empresa = Empresa.find(params[:empresa_id])
      @cliente = @empresa.clientes.find(params[:id])
    end

    def cliente_params
      params.require(:cliente).permit(:nome, :telefone, :celular, :email, :dataNascimento, :endereco_id,
         endereco_attributes: [:cep, :rua_id, :complemento, :numero, :id]);
    end
end

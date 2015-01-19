class CheckListsController < ApplicationController
  before_action :set_check_list, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @check_lists = CheckList.all
    respond_with(@check_lists)
  end

  def show
    respond_with(@check_list)
  end

  def new
    @check_list = CheckList.new
    respond_with(@check_list)
  end

  def edit
  end

  def create
    @check_list = CheckList.new(check_list_params)
    @check_list.save
    respond_with(@check_list)
  end

  def update
    @check_list.update(check_list_params)
    respond_with(@check_list)
  end

  def destroy
    @check_list.destroy
    respond_with(@check_list)
  end

  private
    def set_check_list
      @check_list = CheckList.find(params[:id])
    end

    def check_list_params
      params.require(:check_list).permit(:nome, :ativo, :empresa_id)
    end
end

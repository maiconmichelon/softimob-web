class ItensCheckListController < ApplicationController
  before_action :set_item_check_list, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @itens_check_list = ItemCheckList.all
    respond_with(@itens_check_list)
  end

  def show
    respond_with(@item_check_list)
  end

  def new
    @item_check_list = ItemCheckList.new
    respond_with(@item_check_list)
  end

  def edit
  end

  def create
    @item_check_list = ItemCheckList.new(item_check_list_params)
    @item_check_list.save
    respond_with(@item_check_list)
  end

  def update
    @item_check_list.update(item_check_list_params)
    respond_with(@item_check_list)
  end

  def destroy
    @item_check_list.destroy
    respond_with(@item_check_list)
  end

  private
    def set_item_check_list
      @item_check_list = ItemCheckList.find(params[:id])
    end

    def item_check_list_params
      params.require(:item_check_list).permit(:checkList_id, :nome, :valor, :finalizado, :obrigatorio)
    end
end

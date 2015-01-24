class CreateReservas < ActiveRecord::Migration
  def change
    create_table :reservas do |t|
      t.date :dataReserva, required: true
      t.date :dataVencimento, required: true
      t.references :cliente, index: true, required: true
      t.references :angariador, index: true
      t.decimal :valor, precision: 12, scale: 2, required: true
      t.string :observacoes
      t.references :imovel, index: true, required: true
      t.boolean :resolvido, required: true, default: false

      t.timestamps
    end
  end
end

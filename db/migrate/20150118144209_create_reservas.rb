class CreateReservas < ActiveRecord::Migration
  def change
    create_table :reservas do |t|
      t.date :dataReserva, null: false
      t.date :dataVencimento, null: false
      t.references :cliente, index: true, null: false
      t.references :angariador, index: true
      t.decimal :valor, precision: 12, scale: 2, null: false
      t.string :observacoes
      t.references :imovel, index: true, null: false
      t.boolean :resolvido, null: false, default: false

      t.timestamps
    end
  end
end

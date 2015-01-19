class CreateReservas < ActiveRecord::Migration
  def change
    create_table :reservas do |t|
      t.date :dataReserva
      t.date :dataVencimento
      t.references :cliente, index: true
      t.references :funcionario, index: true
      t.decimal12 :valor
      t.decimal2 :valor
      t.string :observacoes
      t.references :imovel, index: true
      t.boolean :resolvido

      t.timestamps
    end
  end
end

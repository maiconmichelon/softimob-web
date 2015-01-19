class CreateMovimentacaoContabils < ActiveRecord::Migration
  def change
    create_table :movimentacao_contabils do |t|
      t.decimal12 :valor
      t.decimal2 :valor
      t.date :data
      t.references :empresa, index: true

      t.timestamps
    end
  end
end

class CreateOrigemConta < ActiveRecord::Migration
  def change
    create_table :origem_conta do |t|
      t.string :nome
      t.references :planoConta, index: true
      t.references :contaContraPartida, index: true
      t.boolean :ativo
      t.references :empresa, index: true

      t.timestamps
    end
  end
end

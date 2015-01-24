class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.date :data, null: false
      t.references :funcionario, index: true
      t.references :cliente, index: true, null: false
      t.string :observacoes
      t.references :imovel, index: true, null: false

      t.timestamps
    end
  end
end

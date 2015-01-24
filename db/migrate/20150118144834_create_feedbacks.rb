class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.date :data, required: true
      t.references :funcionario, index: true
      t.references :cliente, index: true, required: true
      t.string :observacoes
      t.references :imovel, index: true, required: true

      t.timestamps
    end
  end
end

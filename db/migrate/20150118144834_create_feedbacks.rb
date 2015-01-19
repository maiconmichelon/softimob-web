class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.date :data
      t.references :funcionario, index: true
      t.references :cliente, index: true
      t.string :observacoes
      t.references :imovel, index: true

      t.timestamps
    end
  end
end

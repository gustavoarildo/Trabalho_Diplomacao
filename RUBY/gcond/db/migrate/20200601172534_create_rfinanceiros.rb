class CreateRfinanceiros < ActiveRecord::Migration[6.0]
  def change
    create_table :rfinanceiros do |t|
      t.integer :id_rf
      t.string :nome
      t.integer :telefone
      t.decimal :valorMensalidade
      t.decimal :debitoTotal

      t.timestamps
    end
  end
end

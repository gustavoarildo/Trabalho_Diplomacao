class CreateDemonstrativos < ActiveRecord::Migration[6.0]
  def change
    create_table :demonstrativos do |t|
      t.integer :id_mesano
      t.decimal :valordespesatotal
      t.decimal :receitaestimada
      t.decimal :inadimplencia
      t.decimal :receitamenosinadimplencia

      t.timestamps
    end
  end
end

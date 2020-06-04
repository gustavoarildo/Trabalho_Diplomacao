class CreateConddespesas < ActiveRecord::Migration[6.0]
  def change
    create_table :conddespesas do |t|
      t.integer :id_cd
      t.string :nomedespesa
      t.decimal :valordespesa

      t.timestamps
    end
  end
end

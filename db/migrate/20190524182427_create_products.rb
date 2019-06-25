class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :referencia
      t.string :descricao
      t.string :cor

      t.timestamps
    end
  end
end

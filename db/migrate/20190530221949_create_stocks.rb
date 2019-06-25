class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.integer :quantidade
      t.string :tamanho      
      t.date :dt_entrada, default: ""
      t.references :provider, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end

class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.references :customer, foreign_key: true
      t.references :user, foreign_key: true
      t.float :total_compra
      t.string :tipo_pagamento

      t.timestamps
    end
  end
end

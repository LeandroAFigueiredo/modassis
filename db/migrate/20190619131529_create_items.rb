class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :stock, foreign_key: true
      t.references :customer, foreign_key: true
      t.integer :quantidade, default: 1
      t.boolean :efetivado, default: false
      t.references :purchase, foreign_key: true

      t.timestamps
    end
  end
end

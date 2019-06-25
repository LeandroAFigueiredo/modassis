class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.boolean :admin
      t.string :nome
      t.string :cpf
      t.string :cep
      t.string :end_logr
      t.integer :end_num
      t.string :end_compl
      t.string :end_cid
      t.string :end_ug
      t.string :tel_fixo
      t.string :tel_cel
      t.date :dt_nasc
      t.integer :rg
      t.string :rg_emissor

      t.timestamps
    end
  end
end

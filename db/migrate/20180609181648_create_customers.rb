class CreateCustomers < ActiveRecord::Migration[5.2]

  def change
    create_table :customers do |t|
      t.string :cpf, null: false, default: ""#, limit: 14 
      t.string :nome, null: false, default: ""#,limit: 50
      t.string :cep, default: ""#,limit: 10
      t.string :end_logr, default: ""#, limit: 50
      t.integer :end_num, default: ""#, limit: 5
      t.string :end_compl, default: ""#, limit: 50
      t.string :end_cid, default: ""#, limit: 50
      t.string :end_ug, default: ""#, limit: 2
      t.string :tel_fixo, default: ""#, limit: 15
      t.string :tel_cel, default: ""#, limit: 15
      t.string :tel_trab, default: ""#, limit: 15
      t.date :dt_nasc, default: ""
      t.string :email, default: ""#, limit: 20
      t.string :rg, default: ""#, limit: 10
      t.string :rg_emissor, default: ""#, limit: 10

      t.timestamps
    end
  end
end

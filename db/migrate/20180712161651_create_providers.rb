class CreateProviders < ActiveRecord::Migration[5.2]
  def change
    create_table :providers do |t|
      t.string :nome, default: ""#, limit: 50
      t.string :cpf, default: ""#, limit: 18
      t.string :cnpj, default: ""#, limit: 21
      t.string :cep, default: ""#, limit: 10
      t.string :end_logr, default: ""#, limit: 50
      t.integer :end_num, default: ""#, limit: 5
      t.string :end_compl, default: ""#, limit: 50
      t.string :end_cid, default: ""#, limit: 50
      t.string :end_ug, default: ""#, limit: 2
      t.string :tel_fixo, default: ""#, limit: 15
      t.string :tel_cel, default: ""#, limit: 15

      t.timestamps
    end
  end
end

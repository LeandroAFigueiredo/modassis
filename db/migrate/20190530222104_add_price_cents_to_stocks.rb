class AddPriceCentsToStocks < ActiveRecord::Migration[5.2]
  def change
    add_column :stocks, :preco_cents, :decimal
  end
end

class PurchaseService
    def self.adicionar_no_carrinho(customer, stock)
        raise 'Nao tem mais em estoque' if stock.quantidade < 1

        item = Item.find_by(stock: stock, customer: customer, efetivado: false)
        if item.present?
            item.quantidade += 1
            item.save
        else
            item = Item.create(stock: stock, customer: customer)
        end

        item
    end

    def self.itens_no_carrinho(customer)
        Item.where(customer: customer, efetivado: false)
    end

    def self.remover_item_carrinho(item)
        if item.quantidade > 1
            item.quantidade -= 1
            item.save
        else
            item.destroy
        end
    end

    def self.realizar_venda(customer, user)
        itens = itens_no_carrinho(customer)

        ActiveRecord::Base.transaction do
            purchase = Purchase.create!(customer: customer, user: user)
            total_compra = 0
            itens.each do |item|
                debugger
                stock = item.stock
                stock.quantidade -= item.quantidade
                stock.save!
                
                total_compra += stock.preco_cents * item.quantidade
                item.efetivado = true
                item.purchase = purchase
                item.save!
            end
            purchase.total_compra = total_compra
            purchase.save!
        end
    end
end
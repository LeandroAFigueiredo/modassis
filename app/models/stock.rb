class Stock < ApplicationRecord
  belongs_to :product
  belongs_to :provider

  has_many :items

    #Campos que não podem ser nulos
  validates :quantidade, presence: true, numericality: { greater_than_or_equal_to: 0 }#, length: {maximum: 50}
  validates :tamanho, presence: true#, length: {maximum: 2}
  validates :dt_entrada, presence: true#, length: {maximum: 2}
  validates :preco_cents, presence: true#, length: {maximum: 20}

  #Retrive Produto, ordenado ascendentemente
  scope :searchStock , lambda { |desc| joins(:product).merge(Product.searchProduct(desc)) }
  
  scope :searchPreco, ->(query) { where("preco ILIKE ?", "%#{query}%")}


  monetize :preco_cents
end

	
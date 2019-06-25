class Product < ApplicationRecord
  has_many :stocks
  
  
  #Campos que não podem ser nulos
  validates :referencia, uniqueness: true#, length: {maximum: 50}
  validates :cor, presence: true#, length: {maximum: 20}
  validates :descricao, presence: true#, length: {maximum: 50}


  #Retrive Produto, ordenado ascendentemente
  scope :searchProduct, ->(query) { where("descricao ILIKE ?", "%#{query}%").order( descricao: :asc)}
  
end

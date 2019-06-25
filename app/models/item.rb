class Item < ApplicationRecord
  belongs_to :stock
  belongs_to :customer
  belongs_to :purchase, optional: true

  scope :searchStock , lambda { |desc| joins(:stock).merge(Stock.searchPreco) }

  validates_presence_of :stock, :customer, :quantidade
end

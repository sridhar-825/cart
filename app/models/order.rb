class Order < ActiveRecord::Base
  has_many:product_orders
  validates_presence_of :quantity,:total_price
end

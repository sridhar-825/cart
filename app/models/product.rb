class Product < ActiveRecord::Base
#has_many:product_order
validates_presence_of :name, :price

  def self.validateprice
    errors.add(:price, 'should be greater than 100')if price < 100
  end
end

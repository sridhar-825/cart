require 'test_helper'
require 'factory_girl'
require "shoulda"
require File.dirname(__FILE__) + "/../factories/order.rb"

class OrderTest < ActiveSupport::TestCase
# should have_many :product_orders
 should validate_presence_of:quantity
 should validate_presence_of:total_price
  
    should 'fields' do
      order=Factory(:order)
      assert !order.errors.invalid?(:quantity)
      assert !order.errors.invalid?(:total_price)
    end
  end

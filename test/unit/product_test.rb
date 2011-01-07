require 'test_helper'
require 'factory_girl'
require "shoulda"
require File.dirname(__FILE__) + "/../factories/product.rb"

class ProductTest < ActiveSupport::TestCase
  should validate_presence_of :name
  should validate_presence_of :price

  context "priceValidation" do
    should "Invalid fields" do
      product=Product.new
      assert !product.valid?
      assert product.errors.invalid?(:name)
      assert product.errors.invalid?(:price)
    end
  end
end

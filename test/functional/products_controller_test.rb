require 'test_helper'
require 'factory_girl'
require "shoulda"

require  File.dirname(__FILE__) + '/../factories/product.rb'

class ProductsControllerTest < ActionController::TestCase
  
 context "create order response" do
		setup do
      @product = Factory(:product)
      @item = {@product.id => "yes"}
		end
    should "return 200" do
			get :add_to_cart, {:to_check =>@item}
      assert_response :success
			assert_equal 1, Order.count
			assert_equal 1, ProductOrder.count
		end
 end
end

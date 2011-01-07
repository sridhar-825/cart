require 'test_helper'
require 'factory_girl'
require 'shoulda'
require File.dirname(__FILE__) + '/../factories/order.rb'

class OrdersControllerTest < ActionController::TestCase
 context 'display success' do
   setup do
     @order=Order.new
     Order.create(:id=>1,:total_price => 300, :quantity => 1)
     @Id={@order.id=> "1"}
   end
   should 'create object'do
     get :success, {:id=> @Id[@order.id]}
     assert_response :success
   end
 end

end

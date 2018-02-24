require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit orders_url
  #
  #   assert_selector "h1", text: "Order"
  # end

  test "check routing number" do
    visit stpre_index_url

    first('.entry').click_on 'Add to Cart'

    click_on "Checkout"

    fill_in 'order_name', with: 'Dave Thomas'
    fill_in 'order address', with: '123 Main Street'
    fill_in 'order_email', with: 'dave@example.com'

    assert_no_selector "#order_routing number"

    select 'Check', from: 'pay_type'

    assert_selector "#order_routing_number"
  end
  
end

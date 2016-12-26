require 'test_helper'

class TransactionsControllerTest < ActionDispatch::IntegrationTest
  test "should get detail" do
    get transactions_detail_url
    assert_response :success
  end

end

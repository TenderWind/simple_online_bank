require 'test_helper'

class AccountsControllerTest < ActionDispatch::IntegrationTest
  test "should get detail" do
    get accounts_detail_url
    assert_response :success
  end

end

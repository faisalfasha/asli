require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should prompt for login" do
    get login_url
    assert_response :success
  end

  test "should login" do
    faisal = Users(:one)
    post login_url, params: { name: faisal.name, password: 'secret' }
    assert_redirected_to admin_url
    assert_equal faisal.id, session[:user_id]
  end

  test "should fail login" do
    faisal = users(:one)
    post login_url, params: { name: faisal.name, password: 'wrong' }
    assert_redirected_to login_url
  end

  test "should logout" do
    delete logout_url
    assert_redirected_to stpre_index_url

end

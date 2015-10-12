require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest

  test "should get create" do
    get :create
    assert_redirected_to login_path
  end

  test "should get destroy" do
    get :destroy
    assert_redirected_to login_path
  end

  # test "login" do
  #   get login_path
  #   assert_template "new"
  #   post login_path, sessions: {email: "cloud@example.com", password: "aeris"}
  #   assert_redirected_to surveys_path
  # end
end

require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest



  # test "login" do
  #   get login_path
  #   assert_template "new"
  #   post login_path, sessions: {email: "cloud@example.com", password: "aeris"}
  #   assert_redirected_to surveys_path
  # end
end
# class LoginLogoutTest < ActionDispatch::IntegrationTest
#   test "login page works" do
#     get teachers_path
#     assert_redirected_to login_path
#     follow_redirect!
#     assert_template "new"
#     post login_path, sessions: {email: "gibberish@example.com", password: "(&*GFYIB)"}
#     assert_redirected_to login_path
#     post login_path, sessions: {email: "mason@example.com", password: "catsdrool"}
#     assert_redirected_to teachers_path
#     follow_redirect!
#     assert_select "a[href=#{logout_path}]", 1
#   end
# end

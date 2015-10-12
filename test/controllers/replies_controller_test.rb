require 'test_helper'

class RepliesControllerTest < ActionController::TestCase
  setup do
    @reply = replies(:one)
    session[:author_id] = authors(:one).id
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reply" do
    assert_difference('Reply.count') do
      post :create, reply: { question_id: @reply.question_id, question_reply: @reply.question_reply }
    end

    assert_redirected_to reply_path(assigns(:reply))
  end

  test "should show reply" do
    get :show, id: @reply
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reply
    assert_response :success
  end

  test "should update reply" do
    patch :update, id: @reply, reply: { question_id: @reply.question_id, question_reply: @reply.question_reply }
    assert_redirected_to reply_path(assigns(:reply))
  end

  test "should destroy reply" do
    assert_difference('Reply.count', -1) do
      delete :destroy, id: @reply
    end

    assert_redirected_to replies_path
  end
end

require 'test_helper'

class SurveysControllerTest < ActionController::TestCase
  setup do
    @survey = surveys(:one)
    @author = authors(:one)
    @survey.author = @author
    session[:author_id] = authors(:one).id
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surveys)
  end

  test "should get new" do
    get :new, format: @author
    assert_response :success
  end

  # test "should create survey" do
  #   assert_difference('Survey.count') do
  #     post :create, survey: { author_id: @survey.author_id, description: @survey.description, published: @survey.published, title: @survey.title},
  #                             questions_attributes: {question_type: "Yes/No", prompt: "Who?"}
  #   end
  #
  #   assert_redirected_to dashboard_author_url(assigns: :survey.author_id)
  # end
  # 
  # test "should get edit" do
  #   get :edit, id: @survey
  #   assert_response :success
  # end
  #
  # test "should update survey" do
  #   patch :update, id: @survey, survey: { author_id: @survey.author_id, description: @survey.description, published: @survey.published, title: @survey.title }
  #   assert_redirected_to survey_path(assigns(:survey))
  # end
  #
  # test "should destroy survey" do
  #   session[:author_id] = 1
  #
  #   assert_difference('Survey.count', -1) do
  #     delete :destroy, id: @survey
  #   end
  #
  #   assert_redirected_to surveys_path
  # end
end

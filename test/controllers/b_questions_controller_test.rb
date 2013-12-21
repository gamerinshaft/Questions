require 'test_helper'

class BQuestionsControllerTest < ActionController::TestCase
  setup do
    @b_question = b_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:b_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create b_question" do
    assert_difference('BQuestion.count') do
      post :create, b_question: { content: @b_question.content }
    end

    assert_redirected_to b_question_path(assigns(:b_question))
  end

  test "should show b_question" do
    get :show, id: @b_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @b_question
    assert_response :success
  end

  test "should update b_question" do
    patch :update, id: @b_question, b_question: { content: @b_question.content }
    assert_redirected_to b_question_path(assigns(:b_question))
  end

  test "should destroy b_question" do
    assert_difference('BQuestion.count', -1) do
      delete :destroy, id: @b_question
    end

    assert_redirected_to b_questions_path
  end
end

require 'test_helper'

class MQuestionsControllerTest < ActionController::TestCase
  setup do
    @m_question = m_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_question" do
    assert_difference('MQuestion.count') do
      post :create, m_question: { content: @m_question.content }
    end

    assert_redirected_to m_question_path(assigns(:m_question))
  end

  test "should show m_question" do
    get :show, id: @m_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @m_question
    assert_response :success
  end

  test "should update m_question" do
    patch :update, id: @m_question, m_question: { content: @m_question.content }
    assert_redirected_to m_question_path(assigns(:m_question))
  end

  test "should destroy m_question" do
    assert_difference('MQuestion.count', -1) do
      delete :destroy, id: @m_question
    end

    assert_redirected_to m_questions_path
  end
end

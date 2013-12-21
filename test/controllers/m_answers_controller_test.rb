require 'test_helper'

class MAnswersControllerTest < ActionController::TestCase
  setup do
    @m_answer = m_answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_answer" do
    assert_difference('MAnswer.count') do
      post :create, m_answer: { answer: @m_answer.answer, check: @m_answer.check }
    end

    assert_redirected_to m_answer_path(assigns(:m_answer))
  end

  test "should show m_answer" do
    get :show, id: @m_answer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @m_answer
    assert_response :success
  end

  test "should update m_answer" do
    patch :update, id: @m_answer, m_answer: { answer: @m_answer.answer, check: @m_answer.check }
    assert_redirected_to m_answer_path(assigns(:m_answer))
  end

  test "should destroy m_answer" do
    assert_difference('MAnswer.count', -1) do
      delete :destroy, id: @m_answer
    end

    assert_redirected_to m_answers_path
  end
end

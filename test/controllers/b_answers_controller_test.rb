require 'test_helper'

class BAnswersControllerTest < ActionController::TestCase
  setup do
    @b_answer = b_answers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:b_answers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create b_answer" do
    assert_difference('BAnswer.count') do
      post :create, b_answer: { answer: @b_answer.answer }
    end

    assert_redirected_to b_answer_path(assigns(:b_answer))
  end

  test "should show b_answer" do
    get :show, id: @b_answer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @b_answer
    assert_response :success
  end

  test "should update b_answer" do
    patch :update, id: @b_answer, b_answer: { answer: @b_answer.answer }
    assert_redirected_to b_answer_path(assigns(:b_answer))
  end

  test "should destroy b_answer" do
    assert_difference('BAnswer.count', -1) do
      delete :destroy, id: @b_answer
    end

    assert_redirected_to b_answers_path
  end
end

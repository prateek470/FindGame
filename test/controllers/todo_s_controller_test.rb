require 'test_helper'

class TodoSControllerTest < ActionDispatch::IntegrationTest
  setup do
    @todo_ = todo_s(:one)
  end

  test "should get index" do
    get todo_s_url
    assert_response :success
  end

  test "should get new" do
    get new_todo__url
    assert_response :success
  end

  test "should create todo_" do
    assert_difference('Todo.count') do
      post todo_s_url, params: { todo_: { notes: @todo_.notes, place: @todo_.place, title: @todo_.title } }
    end

    assert_redirected_to todo__url(Todo.last)
  end

  test "should show todo_" do
    get todo__url(@todo_)
    assert_response :success
  end

  test "should get edit" do
    get edit_todo__url(@todo_)
    assert_response :success
  end

  test "should update todo_" do
    patch todo__url(@todo_), params: { todo_: { notes: @todo_.notes, place: @todo_.place, title: @todo_.title } }
    assert_redirected_to todo__url(@todo_)
  end

  test "should destroy todo_" do
    assert_difference('Todo.count', -1) do
      delete todo__url(@todo_)
    end

    assert_redirected_to todo_s_url
  end
end

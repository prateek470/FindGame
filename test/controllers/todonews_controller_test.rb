require 'test_helper'

class TodonewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @todonews = todonews(:one)
  end

  test "should get index" do
    get todonews_url
    assert_response :success
  end

  test "should get new" do
    get new_todonews_url
    assert_response :success
  end

  test "should create todonews" do
    assert_difference('Todonew.count') do
      post todonews_url, params: { todonews: { notes: @todonews.notes, place: @todonews.place, title: @todonews.title } }
    end

    assert_redirected_to todonews_url(Todonew.last)
  end

  test "should show todonews" do
    get todonews_url(@todonews)
    assert_response :success
  end

  test "should get edit" do
    get edit_todonews_url(@todonews)
    assert_response :success
  end

  test "should update todonews" do
    patch todonews_url(@todonews), params: { todonews: { notes: @todonews.notes, place: @todonews.place, title: @todonews.title } }
    assert_redirected_to todonews_url(@todonews)
  end

  test "should destroy todonews" do
    assert_difference('Todonew.count', -1) do
      delete todonews_url(@todonews)
    end

    assert_redirected_to todonews_url
  end
end

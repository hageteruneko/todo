require 'test_helper'

class YarusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yaru = yarus(:one)
  end

  test "should get index" do
    get yarus_url
    assert_response :success
  end

  test "should get new" do
    get new_yaru_url
    assert_response :success
  end

  test "should create yaru" do
    assert_difference('Yaru.count') do
      post yarus_url, params: { yaru: { content: @yaru.content, create: @yaru.create, dline: @yaru.dline, title: @yaru.title } }
    end

    assert_redirected_to yaru_url(Yaru.last)
  end

  test "should show yaru" do
    get yaru_url(@yaru)
    assert_response :success
  end

  test "should get edit" do
    get edit_yaru_url(@yaru)
    assert_response :success
  end

  test "should update yaru" do
    patch yaru_url(@yaru), params: { yaru: { content: @yaru.content, create: @yaru.create, dline: @yaru.dline, title: @yaru.title } }
    assert_redirected_to yaru_url(@yaru)
  end

  test "should destroy yaru" do
    assert_difference('Yaru.count', -1) do
      delete yaru_url(@yaru)
    end

    assert_redirected_to yarus_url
  end
end

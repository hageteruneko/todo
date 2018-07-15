require 'test_helper'

class YarisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yari = yaris(:one)
  end

  test "should get index" do
    get yaris_url
    assert_response :success
  end

  test "should get new" do
    get new_yari_url
    assert_response :success
  end

  test "should create yari" do
    assert_difference('Yari.count') do
      post yaris_url, params: { yari: { content: @yari.content, term: @yari.term, title: @yari.title } }
    end

    assert_redirected_to yari_url(Yari.last)
  end

  test "should show yari" do
    get yari_url(@yari)
    assert_response :success
  end

  test "should get edit" do
    get edit_yari_url(@yari)
    assert_response :success
  end

  test "should update yari" do
    patch yari_url(@yari), params: { yari: { content: @yari.content, term: @yari.term, title: @yari.title } }
    assert_redirected_to yari_url(@yari)
  end

  test "should destroy yari" do
    assert_difference('Yari.count', -1) do
      delete yari_url(@yari)
    end

    assert_redirected_to yaris_url
  end
end

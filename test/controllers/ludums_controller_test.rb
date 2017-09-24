require 'test_helper'

class LudumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ludum = ludums(:one)
  end

  test "should get index" do
    get ludums_url
    assert_response :success
  end

  test "should get new" do
    get new_ludum_url
    assert_response :success
  end

  test "should create ludum" do
    assert_difference('Ludum.count') do
      post ludums_url, params: { ludum: {  } }
    end

    assert_redirected_to ludum_url(Ludum.last)
  end

  test "should show ludum" do
    get ludum_url(@ludum)
    assert_response :success
  end

  test "should get edit" do
    get edit_ludum_url(@ludum)
    assert_response :success
  end

  test "should update ludum" do
    patch ludum_url(@ludum), params: { ludum: {  } }
    assert_redirected_to ludum_url(@ludum)
  end

  test "should destroy ludum" do
    assert_difference('Ludum.count', -1) do
      delete ludum_url(@ludum)
    end

    assert_redirected_to ludums_url
  end
end

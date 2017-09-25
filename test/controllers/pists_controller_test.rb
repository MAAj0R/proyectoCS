require 'test_helper'

class PistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pist = pists(:one)
  end

  test "should get index" do
    get pists_url
    assert_response :success
  end

  test "should get new" do
    get new_pist_url
    assert_response :success
  end

  test "should create pist" do
    assert_difference('Pist.count') do
      post pists_url, params: { pist: { content: @pist.content, title: @pist.title, user: @pist.user } }
    end

    assert_redirected_to pist_url(Pist.last)
  end

  test "should show pist" do
    get pist_url(@pist)
    assert_response :success
  end

  test "should get edit" do
    get edit_pist_url(@pist)
    assert_response :success
  end

  test "should update pist" do
    patch pist_url(@pist), params: { pist: { content: @pist.content, title: @pist.title, user: @pist.user } }
    assert_redirected_to pist_url(@pist)
  end

  test "should destroy pist" do
    assert_difference('Pist.count', -1) do
      delete pist_url(@pist)
    end

    assert_redirected_to pists_url
  end
end

require 'test_helper'

class ImagestatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @imagestatus = imagestatuses(:one)
  end

  test "should get index" do
    get imagestatuses_url, as: :json
    assert_response :success
  end

  test "should create imagestatus" do
    assert_difference('Imagestatus.count') do
      post imagestatuses_url, params: { imagestatus: { name: @imagestatus.name } }, as: :json
    end

    assert_response 201
  end

  test "should show imagestatus" do
    get imagestatus_url(@imagestatus), as: :json
    assert_response :success
  end

  test "should update imagestatus" do
    patch imagestatus_url(@imagestatus), params: { imagestatus: { name: @imagestatus.name } }, as: :json
    assert_response 200
  end

  test "should destroy imagestatus" do
    assert_difference('Imagestatus.count', -1) do
      delete imagestatus_url(@imagestatus), as: :json
    end

    assert_response 204
  end
end

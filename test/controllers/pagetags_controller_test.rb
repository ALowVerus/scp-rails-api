require 'test_helper'

class PagetagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pagetag = pagetags(:one)
  end

  test "should get index" do
    get pagetags_url, as: :json
    assert_response :success
  end

  test "should create pagetag" do
    assert_difference('Pagetag.count') do
      post pagetags_url, params: { pagetag: { page_id: @pagetag.page_id, tag_id: @pagetag.tag_id } }, as: :json
    end

    assert_response 201
  end

  test "should show pagetag" do
    get pagetag_url(@pagetag), as: :json
    assert_response :success
  end

  test "should update pagetag" do
    patch pagetag_url(@pagetag), params: { pagetag: { page_id: @pagetag.page_id, tag_id: @pagetag.tag_id } }, as: :json
    assert_response 200
  end

  test "should destroy pagetag" do
    assert_difference('Pagetag.count', -1) do
      delete pagetag_url(@pagetag), as: :json
    end

    assert_response 204
  end
end

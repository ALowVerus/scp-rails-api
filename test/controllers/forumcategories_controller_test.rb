require 'test_helper'

class ForumcategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @forumcategory = forumcategories(:one)
  end

  test "should get index" do
    get forumcategories_url, as: :json
    assert_response :success
  end

  test "should create forumcategory" do
    assert_difference('Forumcategory.count') do
      post forumcategories_url, params: { forumcategory: { description: @forumcategory.description, title: @forumcategory.title } }, as: :json
    end

    assert_response 201
  end

  test "should show forumcategory" do
    get forumcategory_url(@forumcategory), as: :json
    assert_response :success
  end

  test "should update forumcategory" do
    patch forumcategory_url(@forumcategory), params: { forumcategory: { description: @forumcategory.description, title: @forumcategory.title } }, as: :json
    assert_response 200
  end

  test "should destroy forumcategory" do
    assert_difference('Forumcategory.count', -1) do
      delete forumcategory_url(@forumcategory), as: :json
    end

    assert_response 204
  end
end

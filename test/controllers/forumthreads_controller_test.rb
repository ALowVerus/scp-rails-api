require 'test_helper'

class ForumthreadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @forumthread = forumthreads(:one)
  end

  test "should get index" do
    get forumthreads_url, as: :json
    assert_response :success
  end

  test "should create forumthread" do
    assert_difference('Forumthread.count') do
      post forumthreads_url, params: { forumthread: { category_id: @forumthread.category_id, description: @forumthread.description, title: @forumthread.title } }, as: :json
    end

    assert_response 201
  end

  test "should show forumthread" do
    get forumthread_url(@forumthread), as: :json
    assert_response :success
  end

  test "should update forumthread" do
    patch forumthread_url(@forumthread), params: { forumthread: { category_id: @forumthread.category_id, description: @forumthread.description, title: @forumthread.title } }, as: :json
    assert_response 200
  end

  test "should destroy forumthread" do
    assert_difference('Forumthread.count', -1) do
      delete forumthread_url(@forumthread), as: :json
    end

    assert_response 204
  end
end

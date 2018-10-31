require 'test_helper'

class ForumpostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @forumpost = forumposts(:one)
  end

  test "should get index" do
    get forumposts_url, as: :json
    assert_response :success
  end

  test "should create forumpost" do
    assert_difference('Forumpost.count') do
      post forumposts_url, params: { forumpost: { content: @forumpost.content, parent_id: @forumpost.parent_id, thread_id: @forumpost.thread_id, time: @forumpost.time, title: @forumpost.title, user_id: @forumpost.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show forumpost" do
    get forumpost_url(@forumpost), as: :json
    assert_response :success
  end

  test "should update forumpost" do
    patch forumpost_url(@forumpost), params: { forumpost: { content: @forumpost.content, parent_id: @forumpost.parent_id, thread_id: @forumpost.thread_id, time: @forumpost.time, title: @forumpost.title, user_id: @forumpost.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy forumpost" do
    assert_difference('Forumpost.count', -1) do
      delete forumpost_url(@forumpost), as: :json
    end

    assert_response 204
  end
end

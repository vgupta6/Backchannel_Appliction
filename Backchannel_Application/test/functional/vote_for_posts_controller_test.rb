require 'test_helper'

class VoteForPostsControllerTest < ActionController::TestCase
  setup do
    @vote_for_post = vote_for_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vote_for_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vote_for_post" do
    assert_difference('VoteForPost.count') do
      post :create, vote_for_post: {  }
    end

    assert_redirected_to vote_for_post_path(assigns(:vote_for_post))
  end

  test "should show vote_for_post" do
    get :show, id: @vote_for_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vote_for_post
    assert_response :success
  end

  test "should update vote_for_post" do
    put :update, id: @vote_for_post, vote_for_post: {  }
    assert_redirected_to vote_for_post_path(assigns(:vote_for_post))
  end

  test "should destroy vote_for_post" do
    assert_difference('VoteForPost.count', -1) do
      delete :destroy, id: @vote_for_post
    end

    assert_redirected_to vote_for_posts_path
  end
end

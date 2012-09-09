require 'test_helper'

class VoteForCommentsControllerTest < ActionController::TestCase
  setup do
    @vote_for_comment = vote_for_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vote_for_comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vote_for_comment" do
    assert_difference('VoteForComment.count') do
      post :create, vote_for_comment: {  }
    end

    assert_redirected_to vote_for_comment_path(assigns(:vote_for_comment))
  end

  test "should show vote_for_comment" do
    get :show, id: @vote_for_comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vote_for_comment
    assert_response :success
  end

  test "should update vote_for_comment" do
    put :update, id: @vote_for_comment, vote_for_comment: {  }
    assert_redirected_to vote_for_comment_path(assigns(:vote_for_comment))
  end

  test "should destroy vote_for_comment" do
    assert_difference('VoteForComment.count', -1) do
      delete :destroy, id: @vote_for_comment
    end

    assert_redirected_to vote_for_comments_path
  end
end

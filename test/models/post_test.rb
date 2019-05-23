require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @user = users(:michael)
    @post = @user.posts.build(title: "Hello World", body: "Hello this is my first post", user_id: @user.id)
  end

test "should be valid" do
    assert @post.valid?
  end

  test "user id should be present" do
    @post.user_id = nil
    assert_not @post.valid?
  end

  test "title and body should be present" do
    @post.title = "   "
    @post.body = "   "
    assert_not @post.valid?
  end

  test "title should be at most 150 characters" do
    @post.title = "a" * 151
    assert_not @post.valid?
  end

  test "body should be at most 1000 characters" do
    @post.body = "a" * 1002
    assert_not @post.valid?
  end
end

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(title: "Example Post", link: "http://google.com")
  end

  test "should be valid" do
    assert @post.valid?
  end

  test "title should be present" do
    @post.title = "  "
    assert_not @post.valid?
  end

  test "title should have a minimum length" do
    @post.title = "a" * 2
    assert_not @post.valid?
  end

  test "title should not exceed maximum length" do
    @post.title = "a" * 141
    assert_not @post.valid?
  end

  test "link should be in a valid format" do
    @post.link = "testcom."
    assert_not @post.valid?
  end 
end

require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get messages_index_url
    assert_response :success
  end

  test "should get how" do
    get messages_how_url
    assert_response :success
  end

  test "should get add" do
    get messages_add_url
    assert_response :success
  end

  test "should get edit" do
    get messages_edit_url
    assert_response :success
  end

end

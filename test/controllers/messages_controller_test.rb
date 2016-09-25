require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get messages_new_url
    assert_response :success
  end

  test "successful post" do
    post messages_url, params: {
      message: {
        name: 'cornholio',
        email: 'cornholio@example.com',
        body: 'hai'
      }
    }

    assert_redirected_to messages_new_url
    assert_match /received/, flash[:notice].to_s
  end

  test "failed post" do
    post messages_url, params: {
      message: {
        name: '',
        email: '',
        body: ''
      }
    }

    assert_match /Name .* blank/, response.body
    assert_match /Email .* blank/, response.body
    assert_match /Body .* blank/, response.body
  end

end

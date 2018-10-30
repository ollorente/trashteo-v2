require 'test_helper'

class TypeUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_user = type_users(:one)
  end

  test "should get index" do
    get type_users_url, as: :json
    assert_response :success
  end

  test "should create type_user" do
    assert_difference('TypeUser.count') do
      post type_users_url, params: { type_user: { lock: @type_user.lock, name: @type_user.name } }, as: :json
    end

    assert_response 201
  end

  test "should show type_user" do
    get type_user_url(@type_user), as: :json
    assert_response :success
  end

  test "should update type_user" do
    patch type_user_url(@type_user), params: { type_user: { lock: @type_user.lock, name: @type_user.name } }, as: :json
    assert_response 200
  end

  test "should destroy type_user" do
    assert_difference('TypeUser.count', -1) do
      delete type_user_url(@type_user), as: :json
    end

    assert_response 204
  end
end

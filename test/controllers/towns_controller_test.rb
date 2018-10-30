require 'test_helper'

class TownsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @town = towns(:one)
  end

  test "should get index" do
    get towns_url, as: :json
    assert_response :success
  end

  test "should create town" do
    assert_difference('Town.count') do
      post towns_url, params: { town: { city_id: @town.city_id, lock: @town.lock, name: @town.name } }, as: :json
    end

    assert_response 201
  end

  test "should show town" do
    get town_url(@town), as: :json
    assert_response :success
  end

  test "should update town" do
    patch town_url(@town), params: { town: { city_id: @town.city_id, lock: @town.lock, name: @town.name } }, as: :json
    assert_response 200
  end

  test "should destroy town" do
    assert_difference('Town.count', -1) do
      delete town_url(@town), as: :json
    end

    assert_response 204
  end
end

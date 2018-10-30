require 'test_helper'

class MeasurementUnitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @measurement_unit = measurement_units(:one)
  end

  test "should get index" do
    get measurement_units_url, as: :json
    assert_response :success
  end

  test "should create measurement_unit" do
    assert_difference('MeasurementUnit.count') do
      post measurement_units_url, params: { measurement_unit: { lock: @measurement_unit.lock, name: @measurement_unit.name } }, as: :json
    end

    assert_response 201
  end

  test "should show measurement_unit" do
    get measurement_unit_url(@measurement_unit), as: :json
    assert_response :success
  end

  test "should update measurement_unit" do
    patch measurement_unit_url(@measurement_unit), params: { measurement_unit: { lock: @measurement_unit.lock, name: @measurement_unit.name } }, as: :json
    assert_response 200
  end

  test "should destroy measurement_unit" do
    assert_difference('MeasurementUnit.count', -1) do
      delete measurement_unit_url(@measurement_unit), as: :json
    end

    assert_response 204
  end
end

require 'test_helper'

class QualificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @qualification = qualifications(:one)
  end

  test "should get index" do
    get qualifications_url, as: :json
    assert_response :success
  end

  test "should create qualification" do
    assert_difference('Qualification.count') do
      post qualifications_url, params: { qualification: { active: @qualification.active, feedback: @qualification.feedback, transaction_id: @qualification.transaction_id, value: @qualification.value } }, as: :json
    end

    assert_response 201
  end

  test "should show qualification" do
    get qualification_url(@qualification), as: :json
    assert_response :success
  end

  test "should update qualification" do
    patch qualification_url(@qualification), params: { qualification: { active: @qualification.active, feedback: @qualification.feedback, transaction_id: @qualification.transaction_id, value: @qualification.value } }, as: :json
    assert_response 200
  end

  test "should destroy qualification" do
    assert_difference('Qualification.count', -1) do
      delete qualification_url(@qualification), as: :json
    end

    assert_response 204
  end
end

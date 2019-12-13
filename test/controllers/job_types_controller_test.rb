require 'test_helper'

class JobTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_type = job_types(:one)
  end

  test "should get index" do
    get job_types_url, as: :json
    assert_response :success
  end

  test "should create job_type" do
    assert_difference('JobType.count') do
      post job_types_url, params: { job_type: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show job_type" do
    get job_type_url(@job_type), as: :json
    assert_response :success
  end

  test "should update job_type" do
    patch job_type_url(@job_type), params: { job_type: {  } }, as: :json
    assert_response 200
  end

  test "should destroy job_type" do
    assert_difference('JobType.count', -1) do
      delete job_type_url(@job_type), as: :json
    end

    assert_response 204
  end
end

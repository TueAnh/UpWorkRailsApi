require 'test_helper'

class JobPostActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_post_activity = job_post_activities(:one)
  end

  test "should get index" do
    get job_post_activities_url, as: :json
    assert_response :success
  end

  test "should create job_post_activity" do
    assert_difference('JobPostActivity.count') do
      post job_post_activities_url, params: { job_post_activity: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show job_post_activity" do
    get job_post_activity_url(@job_post_activity), as: :json
    assert_response :success
  end

  test "should update job_post_activity" do
    patch job_post_activity_url(@job_post_activity), params: { job_post_activity: {  } }, as: :json
    assert_response 200
  end

  test "should destroy job_post_activity" do
    assert_difference('JobPostActivity.count', -1) do
      delete job_post_activity_url(@job_post_activity), as: :json
    end

    assert_response 204
  end
end

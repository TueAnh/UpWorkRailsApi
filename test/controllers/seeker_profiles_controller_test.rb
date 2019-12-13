require 'test_helper'

class SeekerProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seeker_profile = seeker_profiles(:one)
  end

  test "should get index" do
    get seeker_profiles_url, as: :json
    assert_response :success
  end

  test "should create seeker_profile" do
    assert_difference('SeekerProfile.count') do
      post seeker_profiles_url, params: { seeker_profile: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show seeker_profile" do
    get seeker_profile_url(@seeker_profile), as: :json
    assert_response :success
  end

  test "should update seeker_profile" do
    patch seeker_profile_url(@seeker_profile), params: { seeker_profile: {  } }, as: :json
    assert_response 200
  end

  test "should destroy seeker_profile" do
    assert_difference('SeekerProfile.count', -1) do
      delete seeker_profile_url(@seeker_profile), as: :json
    end

    assert_response 204
  end
end

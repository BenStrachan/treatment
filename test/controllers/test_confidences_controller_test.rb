require 'test_helper'

class TestConfidencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_confidence = test_confidences(:one)
  end

  test "should get index" do
    get test_confidences_url
    assert_response :success
  end

  test "should get new" do
    get new_test_confidence_url
    assert_response :success
  end

  test "should create test_confidence" do
    assert_difference('TestConfidence.count') do
      post test_confidences_url, params: { test_confidence: { confidence_rating: @test_confidence.confidence_rating, test: @test_confidence.test, test_result: @test_confidence.test_result } }
    end

    assert_redirected_to test_confidence_url(TestConfidence.last)
  end

  test "should show test_confidence" do
    get test_confidence_url(@test_confidence)
    assert_response :success
  end

  test "should get edit" do
    get edit_test_confidence_url(@test_confidence)
    assert_response :success
  end

  test "should update test_confidence" do
    patch test_confidence_url(@test_confidence), params: { test_confidence: { confidence_rating: @test_confidence.confidence_rating, test: @test_confidence.test, test_result: @test_confidence.test_result } }
    assert_redirected_to test_confidence_url(@test_confidence)
  end

  test "should destroy test_confidence" do
    assert_difference('TestConfidence.count', -1) do
      delete test_confidence_url(@test_confidence)
    end

    assert_redirected_to test_confidences_url
  end
end

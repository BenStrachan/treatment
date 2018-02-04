require 'test_helper'

class TestConclusionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_conclusion = test_conclusions(:one)
  end

  test "should get index" do
    get test_conclusions_url
    assert_response :success
  end

  test "should get new" do
    get new_test_conclusion_url
    assert_response :success
  end

  test "should create test_conclusion" do
    assert_difference('TestConclusion.count') do
      post test_conclusions_url, params: { test_conclusion: { conclusion_rating: @test_conclusion.conclusion_rating, diagnosis: @test_conclusion.diagnosis, test: @test_conclusion.test } }
    end

    assert_redirected_to test_conclusion_url(TestConclusion.last)
  end

  test "should show test_conclusion" do
    get test_conclusion_url(@test_conclusion)
    assert_response :success
  end

  test "should get edit" do
    get edit_test_conclusion_url(@test_conclusion)
    assert_response :success
  end

  test "should update test_conclusion" do
    patch test_conclusion_url(@test_conclusion), params: { test_conclusion: { conclusion_rating: @test_conclusion.conclusion_rating, diagnosis: @test_conclusion.diagnosis, test: @test_conclusion.test } }
    assert_redirected_to test_conclusion_url(@test_conclusion)
  end

  test "should destroy test_conclusion" do
    assert_difference('TestConclusion.count', -1) do
      delete test_conclusion_url(@test_conclusion)
    end

    assert_redirected_to test_conclusions_url
  end
end

require 'test_helper'

class JobEntriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_entry = job_entries(:one)
  end

  test "should get index" do
    get job_entries_url
    assert_response :success
  end

  test "should get new" do
    get new_job_entry_url
    assert_response :success
  end

  test "should create job_entry" do
    assert_difference('JobEntry.count') do
      post job_entries_url, params: { job_entry: { from: @job_entry.from, job_id: @job_entry.job_id, until: @job_entry.until, user_id: @job_entry.user_id } }
    end

    assert_redirected_to job_entry_url(JobEntry.last)
  end

  test "should show job_entry" do
    get job_entry_url(@job_entry)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_entry_url(@job_entry)
    assert_response :success
  end

  test "should update job_entry" do
    patch job_entry_url(@job_entry), params: { job_entry: { from: @job_entry.from, job_id: @job_entry.job_id, until: @job_entry.until, user_id: @job_entry.user_id } }
    assert_redirected_to job_entry_url(@job_entry)
  end

  test "should destroy job_entry" do
    assert_difference('JobEntry.count', -1) do
      delete job_entry_url(@job_entry)
    end

    assert_redirected_to job_entries_url
  end
end
